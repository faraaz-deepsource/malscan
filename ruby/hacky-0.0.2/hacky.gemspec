# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hacky/version'

Gem::Specification.new do |spec|
  spec.name          = "hacky"
  spec.version       = Hacky::VERSION
  spec.authors       = ["yunlei"]
  spec.email         = ["yunlei.liu@appfolio.com"]
  spec.summary       = %q{Hacky Hacky Hacky}
  spec.description   = %q{Hacky Hacky Hacky}
  spec.homepage      = "https://github.com/ipmsteven/hacky"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.extensions    = ["Rakefile"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
