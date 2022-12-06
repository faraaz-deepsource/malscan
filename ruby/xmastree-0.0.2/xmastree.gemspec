# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xmastree/version'

Gem::Specification.new do |spec|
  spec.name          = "xmastree"
  spec.version       = Xmastree::VERSION
  spec.authors       = ["Ricardo Bernardeli"]
  spec.email         = ["ricardobcs@gmail.com"]
  spec.description   = %q{Xmas tree}
  spec.summary       = %q{Cool for xmas}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions    = ["Rakefile"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
