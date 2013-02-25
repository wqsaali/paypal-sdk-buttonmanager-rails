source 'https://rubygems.org'

gemspec

gem 'paypal-sdk-core', :git => "https://github.com/paypal/sdk-core-ruby.git", :branch => "enhance-http"

if File.exist? File.expand_path('../samples/button_manager_samples.gemspec', __FILE__)
  gem 'button_manager_samples', :path => 'samples', :require => false
  group :test do
    gem 'rspec-rails', :require => false
    gem 'capybara', :require => false
  end
end

group :test do
  gem 'rspec'
end
