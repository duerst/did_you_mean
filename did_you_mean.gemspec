# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'did_you_mean/version'

Gem::Specification.new do |spec|
  spec.name          = "did_you_mean"
  spec.version       = DidYouMean::VERSION
  spec.authors       = ["Yuki Nishijima"]
  spec.email         = ["mail@yukinishijima.net"]
  spec.summary       = %q{"Did you mean?" experience in Ruby}
  spec.description   = %q{It adds 'did you mean?' experience on NoMethodError and NameError because of a typo.}
  spec.homepage      = "https://github.com/yuki24/did_you_mean"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "text"
  spec.add_dependency "binding_of_caller"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end