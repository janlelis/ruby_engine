# -*- encoding: utf-8 -*-

require File.expand_path('../lib/ruby_engine', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ruby_engine"
  gem.version       = RubyEngine::VERSION
  gem.summary       = 'Adds the RubyEngine pseudo-constant.'
  gem.description   = 'Gives you an RubyEngine class that simplifies checking for your Ruby implementation.'
  gem.license       = "MIT"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/ruby_engine"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.add_development_dependency 'rake', '~> 13.2'
  gem.add_development_dependency 'rspec', '~> 3.13'
end
