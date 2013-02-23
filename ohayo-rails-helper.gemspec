# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ohayo-rails-helper/version'

Gem::Specification.new do |gem|
  gem.name          = "ohayo-rails-helper"
  gem.version       = OhayoRailsHelper::VERSION
  gem.authors       = ["Kristian Freeman"]
  gem.email         = ["kristian@kristianfreeman.com"]
  gem.description   = %q{A Rails helper for accessing Ohayo bios for users}
  gem.summary   = %q{A Rails helper for accessing Ohayo bios for users}
  gem.homepage      = "http://ohayo.io/api"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "httparty"

  gem.add_development_dependency "rspec"
end
