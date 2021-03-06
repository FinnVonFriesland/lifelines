# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lifelines/version'

Gem::Specification.new do |spec|
  spec.name          = "lifelines"
  spec.version       = Lifelines::VERSION
  spec.authors       = ["finn von friesland"]
  spec.email         = ["finn.von.friesland@googlemail.com"]
  spec.summary       = %q{Small Example Test Suite for TW-Marsair.}
  spec.description   = %q{Example to establish basic concept of a user-viewed automated test suite}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
