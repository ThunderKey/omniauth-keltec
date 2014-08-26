# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/keltec/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-keltec"
  spec.version       = OmniAuth::Keltec::VERSION
  spec.authors       = ["Nicolas Ganz"]
  spec.email         = ["nicolas@keltec.ch"]
  spec.summary       = %q{A OmniAuth strategy for Keltec-Accounts}
  spec.description   = spec.summary
  spec.homepage      = "http://keltec.ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
end
