# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multissh/version'

Gem::Specification.new do |spec|
  spec.name          = "multissh"
  spec.version       = Multissh::VERSION
  spec.authors       = ["Jonas Tehler"]
  spec.email         = ["jonas@tehler.se"]

  spec.summary       = %q{Run ssh commands in parallel on multiple hosts}
  spec.homepage      = "https://github.com/jegt/multissh"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sshkit", ">= 1.14.0"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
