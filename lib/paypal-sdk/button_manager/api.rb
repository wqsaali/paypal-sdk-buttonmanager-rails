require 'paypal-sdk-core'

module PayPal
  module SDK
    module ButtonManager
      class API < Core::API::Merchant
        include Services

        def initialize(environment = nil, options = {})
          super("", environment, options)
        end

        ADAPTIVE_PAYMENTS_HTTP_HEADER = { "X-PAYPAL-REQUEST-SOURCE" => "buttonmanager-ruby-sdk-#{VERSION}" }
        def default_http_header
          super.merge(ADAPTIVE_PAYMENTS_HTTP_HEADER)
        end
      end
    end
  end
end

