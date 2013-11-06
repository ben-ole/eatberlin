# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eat/berlin/version'

Gem::Specification.new do |spec|
  spec.name          = "eat-berlin"
  spec.version       = Eat::Berlin::VERSION
  spec.authors       = ["Benjamin Müller"]
  spec.email         = ["benjamin@urbn.de"]
  spec.description   = %q{This nifty tool will help you to forget bad days searching for a cantine.}
  spec.summary       = %q{to be completed}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "asciiart"
end
