# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'people/version'

Gem::Specification.new do |spec|
  spec.name = 'people'
  spec.version = People::VERSION
  spec.authors = ['Raz Konforti']
  spec.email = ['konforti@gmail.com']
  spec.required_ruby_version = '>= 2.2.2'
  spec.summary = 'Remote Identity Management'
  spec.description = 'Remote Identity Management'
  spec.homepage = 'http://www.konforti.net/people'
  spec.license = 'MIT'

  spec.files = `git ls-files`.split("\n")
  spec.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  spec.require_paths = ['lib']

  spec.add_dependency 'httparty', '~> 0.13'
  spec.add_dependency 'json', '~> 1.8.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
