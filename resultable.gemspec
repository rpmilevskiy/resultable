# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resultable/version'

Gem::Specification.new do |spec|
  spec.name          = "resultable"
  spec.version       = Resultable::VERSION
  spec.authors       = ["Ruslan Milevskiy"]
  spec.email         = ["rpmilevskiy@gmail.com"]
  spec.summary       = %q{Simple ruby gem that provides reusable result object.}
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
