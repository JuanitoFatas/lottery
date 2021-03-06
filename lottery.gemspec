# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lottery/version'

Gem::Specification.new do |spec|
  spec.platform      = Gem::Platform::RUBY

  spec.name          = "lottery"
  spec.version       = Lottery::VERSION

  spec.authors       = ["Juanito Fatas"]
  spec.email         = ["katehuang0320@gmail.com"]

  spec.description   = %q{Lottery Generator in Ruby}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/JuanitoFatas/lottery"

  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "thor", "~> 0.18"

end
