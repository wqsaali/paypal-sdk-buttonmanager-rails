require 'paypal-sdk-core'

module PayPal
  module SDK
    module ButtonManager
      autoload :Version,   "paypal-sdk/button_manager/version"
      autoload :Services,  "paypal-sdk/button_manager/services"
      autoload :DataTypes, "paypal-sdk/button_manager/data_types"
      autoload :API,       "paypal-sdk/button_manager/api"

      def self.new(*args)
        API.new(*args)
      end
    end
  end
end
