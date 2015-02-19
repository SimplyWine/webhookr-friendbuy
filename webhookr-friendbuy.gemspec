# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webhookr-friendbuy/version'

Gem::Specification.new do |gem|
  gem.name          = "webhookr-friendbuy"
  gem.version       = Webhookr::Friendbuy::VERSION
  gem.required_rubygems_version = Gem::Requirement.new(">= 0") if gem.respond_to? :required_rubygems_version=
  gem.authors       = ["Gerry Power"]
  gem.email         = ["code@zoocasa.com"]
  gem.description   = "A webhookr extension to support Friendbuy webhooks."
  gem.summary       = gem.description

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.homepage      = "http://github.com/zoocasa/webhookr-friendbuy"
  gem.require_paths = ["lib"]

  gem.add_dependency("webhookr")
  gem.add_dependency("activesupport", [">= 3.1"])
end

