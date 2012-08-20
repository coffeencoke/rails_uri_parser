# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_uri_parser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Simpson"]
  gem.email         = ["matt.simpson3@gmail.com"]
  gem.description   = %q{Provides simple parsing for our use of URIs in our RESTful APIs}
  gem.summary       = %q{Provides simple parsing for our use of URIs in our RESTful APIs}
  gem.homepage      = "https://github.com/ionicmobile/rails_uri_parser"

  gem.files         = %w(lib/rails_uri_parser.rb lib/rails_uri_parser/version.rb)
  gem.test_files    = %w(spec/lib/rails_uri_parser_spec.rb)
  gem.name          = "rails_uri_parser"
  gem.require_paths = ["lib"]
  gem.version       = RailsUriParser::VERSION
  gem.add_dependency 'rails', '~> 3.2'
  gem.add_development_dependency('rspec', "~> 2.11")
end
