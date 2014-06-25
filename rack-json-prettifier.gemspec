# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/json_prettifier/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-json-prettifier"
  spec.version       = Rack::JsonPrettifier::VERSION
  spec.authors       = ["Hannes Nevalainen"]
  spec.email         = ["kwando@merciless.me"]
  spec.summary       = %q{Prettify your JSON.}
  spec.description   = %q{Middleware for prettifying JSON, should not be used in production.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
