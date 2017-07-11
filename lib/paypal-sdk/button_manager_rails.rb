require 'paypal-sdk-core'

module PayPal
  module SDK
    module ButtonManagerRails
      autoload :VERSION,   "paypal-sdk/button_manager_rails/version"
      autoload :Services,  "paypal-sdk/button_manager_rails/services"
      autoload :DataTypes, "paypal-sdk/button_manager_rails/data_types"
      autoload :API,       "paypal-sdk/button_manager_rails/api"

      def self.new(*args)
        API.new(*args)
      end
    end
  end
end
