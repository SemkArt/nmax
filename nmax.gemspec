# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nmax/version"

Gem::Specification.new do |s|
  s.name          = 'nmax'
  s.version       = Nmax::VERSION
  s.date          = '2018-09-08'
  s.authors       = ['Semyon Kartashov']
  s.email         = ['semkart@gmail.com']

  s.summary       = "N max"
  s.description   = "Search n of max integer numbers in standard input stream."
  s.homepage      = 'https://github.com/semkart/nmax'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  s.bindir        = 'bin'
  s.executables = ['nmax']
  s.require_paths = ['lib']

  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'
end