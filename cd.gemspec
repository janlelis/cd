# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/cd"

Gem::Specification.new do |gem|
  gem.name          = "cd"
  gem.version       = Cd::VERSION
  gem.summary       = "Enhanced cd command for the Ruby console"
  gem.description   = "Enhanced cd command for the Ruby console. Supports changing to previous directory using `-cd` and to the user's home directory with `~cd`."
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["hi@ruby.consulting"]
  gem.homepage      = "https://github.com/janlelis/cd"
  gem.license       = "MIT"

  gem.files         = Dir['{**/}{.*,*}'].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.metadata      = { "rubygems_mfa_required" => "true" }

  gem.required_ruby_version = '>= 1.9.3'
end
