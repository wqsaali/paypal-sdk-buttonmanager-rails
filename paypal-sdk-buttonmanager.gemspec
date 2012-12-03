# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paypal-sdk/button_manager/version'

Gem::Specification.new do |gem|
  gem.name          = "paypal-sdk-buttonmanager"
  gem.version       = PayPal::SDK::ButtonManager::VERSION
  gem.authors       = ["siddick"]
  gem.email         = ["mebramsha@paypal.com"]
  gem.description   = %q{ButtonManager SDK}
  gem.summary       = %q{ButtonManager SDK}
  gem.homepage      = "https://www.x.com/"

  gem.files         = Dir["{bin,spec,lib}/**/*"] + ["Rakefile", "README.md", "Gemfile"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('paypal-sdk-core', '~> 0.1.0')
end
