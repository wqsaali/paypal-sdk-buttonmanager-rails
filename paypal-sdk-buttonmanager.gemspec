# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paypal-sdk/button_manager/version'

Gem::Specification.new do |gem|
  gem.name          = "paypal-sdk-buttonmanager"
  gem.version       = PayPal::SDK::ButtonManager::VERSION
  gem.authors       = ["PayPal"]
  gem.email         = ["DL-PP-Platform-Ruby-SDK@ebay.com"]
  gem.summary       = %q{PayPal Button Manager SDK}
  gem.description   = %q{The PayPal Button Manager SDK provides Ruby APIs to create, and manage PayPal Payments Standard buttons programmatically.}
  gem.homepage      = "https://developer.paypal.com"

  gem.files         = Dir["{bin,spec,lib}/**/*"] + ["Rakefile", "README.md", "Gemfile"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('paypal-sdk-core', '~> 0.2.0')
end
