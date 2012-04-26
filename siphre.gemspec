# -*- encoding: utf-8 -*-
require File.expand_path('../lib/siphre/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Bridges"]
  gem.email         = ["mbridges.91@gmail.com"]
  gem.description   = %q{A collection of simple ciphers}
  gem.summary       = %q{A collection of simple ciphers}
  gem.homepage      = "http://github.com/mattdbridges/siphre"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "siphre"
  gem.require_paths = ["lib"]
  gem.version       = Siphre::VERSION

  gem.add_development_dependency 'rake', '0.9.2.2'
end
