# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'leafy/version'

Gem::Specification.new do |spec|
  spec.name          = "leafy"
  spec.version       = Leafy::VERSION
  spec.authors       = ["Koichi Tanaka"]
  spec.email         = ["k.tanaka@everyleaf.com"]
  spec.summary       = %q{Post to leafy.}
  spec.description   = %q{Post to leafy.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
