# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Benjamin Smith"]
  gem.email         = ["benjamin.lee.smith@gmail.com"]
  gem.description   = "The Official RubyNation Gem!"
  gem.summary       = "The Official RubyNation Gem! Print the schedule, find the drinkups, enter to win a iPod Nano!"
  gem.homepage      = "http://www.rubynation.org/"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.extensions    = ["Rakefile"]
  gem.name          = "rubynation"
  gem.require_paths = ["lib"]
  gem.version       = "2013.6"
  gem.add_runtime_dependency "terminal-table"
  gem.add_runtime_dependency "json"
end
