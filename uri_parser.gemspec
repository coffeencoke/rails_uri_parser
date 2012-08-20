# -*- encoding: utf-8 -*-
require File.expand_path('../lib/uri_parser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Simpson"]
  gem.email         = ["matt.simpson3@gmail.com"]
  gem.description   = %q{Provides simple parsing for our use of URIs in our RESTful APIs}
  gem.homepage      = "https://github.com/ionicmobile/uri_parser"

  gem.files         = %w(lib/uri_parser.rb lib/uri_parser/version.rb)
  gem.test_files    = %w(spec/lib/uri_parser_spec.rb)
  gem.name          = "uri_parser"
  gem.require_paths = ["lib"]
  gem.version       = UriParser::VERSION
  gem.add_dependency 'rails', '~> 3.2'
  gem.add_development_dependency('rspec', "~> 2.11")
end
