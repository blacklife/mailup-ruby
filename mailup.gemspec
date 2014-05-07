# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailup/version'

Gem::Specification.new do |gem|
  gem.name          = "mailup"
  gem.version       = MailUp::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ["Brian Getting"]
  gem.email         = ["brian@tatem.ae"]
  gem.homepage      = "https://github.com/mailup/mailup-ruby"
  gem.summary       = "Ruby wrapper for the MailUp REST API"
  gem.description   = "A Ruby gem for interacting with the MailUp REST API."
  
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'oauth2'
  
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
end
