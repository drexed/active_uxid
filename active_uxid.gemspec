# frozen_string_literal: true

# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_uxid/version'

Gem::Specification.new do |spec|
  spec.name = 'active_uxid'
  spec.version = ActiveRegulation::VERSION
  spec.authors = ['Juan Gomez']
  spec.email = ['j.gomez@drexed.com']

  spec.summary = "Gem for generating lexicographical UXid's."
  spec.description = 'Generate lexicographical UXids.'
  spec.homepage = 'http://drexed.github.io/active_uxid'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib support]

  spec.add_runtime_dependency 'activerecord'
  spec.add_runtime_dependency 'activesupport'
  spec.add_runtime_dependency 'dry-configurable'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'generator_spec'
  spec.add_development_dependency 'fasterer'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'rubocop'
end
