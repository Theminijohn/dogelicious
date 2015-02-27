# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogelicious/version'

Gem::Specification.new do |spec|
  spec.name          = "dogelicious"
  spec.version       = Dogelicious::VERSION
  spec.authors       = ["The Mini John"]
  spec.email         = ["the@minijohn.me"]
  spec.summary       = %q{Convert broing English into doge!}
  spec.description   = %q{English to Doge translation}
  spec.homepage      = "http://www.minijohn.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
