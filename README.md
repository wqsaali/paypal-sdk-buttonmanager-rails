# ButtonManager

SDK for ButtonManager.

## Installation

Add this line to your application's Gemfile:

    gem 'paypal-sdk-buttonmanager'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paypal-sdk-buttonmanager

## Configuration

For Rails application:

    rails g paypal:sdk:install

For other ruby application, create a configuration file(`config/paypal.yml`):

    development: &default
      username: jb-us-seller_api1.paypal.com
      password: WX4WTU3S8MY44S7F
      signature: AFcWxV21C7fd0v3bYYYRCpSSRl31A7yDhhsPUU2XhtMoZXsWHFxu-RWy
      app_id: APP-80W284485P519543T
      http_timeout: 30
      mode: sandbox
      sandbox_email_address: Platform.sdk.seller@gmail.com
      # # with certificate
      # cert_path: "config/cert_key.pem"
      # # with token authentication
      # token: ESTy2hio5WJQo1iixkH29I53RJxaS0Gvno1A6.YQXZgktxbY4I2Tdg
      # token_secret: ZKPhUYuwJwYsfWdzorozWO2U9pI
      # # with Proxy
      # http_proxy: http://proxy-ipaddress:3129/
      # # with device ip address
      # device_ipaddress: "127.0.0.1"
    test:
      <<: *default
    production:
      <<: *default
      mode: live

Load Configurations from specified file:

    PayPal::SDK::Core::Config.load('config/paypal.yml',  ENV['RACK_ENV'] || 'development')

## Create API object

Create API object:

    api = PayPal::SDK::ButtonManager::API.new

Override configuration while creating a object:

    api = PayPal::SDK::ButtonManager::API.new(:development)
    api = PayPal::SDK::ButtonManager::API.new(:development, :app_id => "XYZ")
    api = PayPal::SDK::ButtonManager::API.new(:app_id => "XYZ")    # Take default environment.

Change configuration:

    api.set_config :testing
    api.set_config :testing, app_id => "XYZ"


## Build Request Object

To make api request, we need to build a request object.

    # To build a empty request object
    bm_create_button_request = api.build_bm_create_button()

    # To build a request object with default data
    bm_create_button_request = api.build_bm_create_button( :ButtonType => "BUYNOW", :ButtonCode => "HOSTED" )

    # To build a request object with block
    bm_create_button_request = api.build_bm_create_button do
      self.ButtonType = "BUYNOW"
      self.ButtonCode = "HOSTED"
    end

The Build method can be access with camelcase or underscore:

    api = api.build_bm_create_button()
    # (or)
    api = api.BuildBMCreateButton()

## Assign value to members

Members can be access with camelcase or underscore format.

    bm_create_button_request.ButtonType = "BUYNOW"
    # With underscore
    bm_create_button_request.button_type = "BUYNOW"

To Get members list for the given object( For Reference ):

    bm_create_button_request.members

## Make API Request

Make api call with request object:

    bm_create_button_response = api.bm_create_button(bm_create_button_request)

Make api call with hash:

    bm_create_button_response = api.bm_create_button( :ButtonType => "BUYNOW", :ButtonCode => "HOSTED" )

## Access values from response object

To get response status:

    bm_create_button_response.ack

## Example

```ruby
require 'paypal-sdk-buttonmanager'
@api = PayPal::SDK::ButtonManager::API.new

# Build request object
@bm_create_button_request = @api.build_bm_create_button()
@bm_create_button_request.ButtonType = "BUYNOW"
@bm_create_button_request.ButtonCode = "HOSTED"
@bm_create_button_request.ButtonVar  = ["item_name=Item","amount=5","return=http//localhost:3000"]

# Make API call & get response
@bm_create_button_response = @api.bm_create_button(@bm_create_button_request)

# Access Response
@bm_create_button_response.Timestamp
@bm_create_button_response.Ack
@bm_create_button_response.CorrelationID
@bm_create_button_response.Version
@bm_create_button_response.Build
@bm_create_button_response.Website
@bm_create_button_response.Email
@bm_create_button_response.HostedButtonID
```

## Samples

Add following line in rails `Gemfile`:

    gem 'paypal-sdk-buttonmanager'
    gem 'button_manager_samples', :git => "https://github.com/paypal/buttonmanager-sdk-ruby.git", :group => :development

Configure routes(`config/routes.rb`):

    mount ButtonManagerSamples::Engine => "/samples" if Rails.env.development?

To get default paypal configuration execute:

    rails g paypal:sdk:install

Run `rails server` and check the samples.

