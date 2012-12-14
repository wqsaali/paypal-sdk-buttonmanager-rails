# Setup ButtonManager Samples

Add following line in rails `Gemfile`:

    gem 'paypal-sdk-buttonmanager'
    gem 'button_manager_samples', :git => "https://github.com/paypal/buttonmanager-sdk-ruby.git", :group => :development

Configure routes(`config/routes.rb`):

    mount ButtonManagerSamples::Engine => "/samples" if Rails.env.development?

To get default paypal configuration execute:

    rails g paypal:sdk:install

Run `rails server` and check the samples.
