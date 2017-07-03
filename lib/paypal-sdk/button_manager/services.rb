require 'paypal-sdk-core'

# AUTO GENERATED code for PayPalAPIInterfaceService
module PayPal::SDK
  module ButtonManager

	  # Service Version
	  SERVICE_VERSION = "106.0"
	  # Service Name
	  SERVICE_NAME = "PayPalAPIInterfaceService"

    module Services
      include DataTypes


      # Service Call: BMCreateButton
      # @param BMCreateButtonReq
      # @return BMCreateButtonResponseType
      def BMCreateButton(options = {} , http_header = {})
        request_object  = BuildBMCreateButton(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMCreateButton", request_hash, http_header)
        BMCreateButtonResponseType.new(response_hash)
      end
      alias_method :bm_create_button, :BMCreateButton

      def BuildBMCreateButton(options = {}, &block)
        klass     = BMCreateButtonReq
        options = klass.new(:BMCreateButtonRequest => options) unless options.is_a?(klass)
        object = (options.BMCreateButtonRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_create_button, :BuildBMCreateButton

      # Service Call: BMUpdateButton
      # @param BMUpdateButtonReq
      # @return BMUpdateButtonResponseType
      def BMUpdateButton(options = {} , http_header = {})
        request_object  = BuildBMUpdateButton(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMUpdateButton", request_hash, http_header)
        BMUpdateButtonResponseType.new(response_hash)
      end
      alias_method :bm_update_button, :BMUpdateButton

      def BuildBMUpdateButton(options = {}, &block)
        klass     = BMUpdateButtonReq
        options = klass.new(:BMUpdateButtonRequest => options) unless options.is_a?(klass)
        object = (options.BMUpdateButtonRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_update_button, :BuildBMUpdateButton

      # Service Call: BMManageButtonStatus
      # @param BMManageButtonStatusReq
      # @return BMManageButtonStatusResponseType
      def BMManageButtonStatus(options = {} , http_header = {})
        request_object  = BuildBMManageButtonStatus(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMManageButtonStatus", request_hash, http_header)
        BMManageButtonStatusResponseType.new(response_hash)
      end
      alias_method :bm_manage_button_status, :BMManageButtonStatus

      def BuildBMManageButtonStatus(options = {}, &block)
        klass     = BMManageButtonStatusReq
        options = klass.new(:BMManageButtonStatusRequest => options) unless options.is_a?(klass)
        object = (options.BMManageButtonStatusRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_manage_button_status, :BuildBMManageButtonStatus

      # Service Call: BMGetButtonDetails
      # @param BMGetButtonDetailsReq
      # @return BMGetButtonDetailsResponseType
      def BMGetButtonDetails(options = {} , http_header = {})
        request_object  = BuildBMGetButtonDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMGetButtonDetails", request_hash, http_header)
        BMGetButtonDetailsResponseType.new(response_hash)
      end
      alias_method :bm_get_button_details, :BMGetButtonDetails

      def BuildBMGetButtonDetails(options = {}, &block)
        klass     = BMGetButtonDetailsReq
        options = klass.new(:BMGetButtonDetailsRequest => options) unless options.is_a?(klass)
        object = (options.BMGetButtonDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_get_button_details, :BuildBMGetButtonDetails

      # Service Call: BMSetInventory
      # @param BMSetInventoryReq
      # @return BMSetInventoryResponseType
      def BMSetInventory(options = {} , http_header = {})
        request_object  = BuildBMSetInventory(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMSetInventory", request_hash, http_header)
        BMSetInventoryResponseType.new(response_hash)
      end
      alias_method :bm_set_inventory, :BMSetInventory

      def BuildBMSetInventory(options = {}, &block)
        klass     = BMSetInventoryReq
        options = klass.new(:BMSetInventoryRequest => options) unless options.is_a?(klass)
        object = (options.BMSetInventoryRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_set_inventory, :BuildBMSetInventory

      # Service Call: BMGetInventory
      # @param BMGetInventoryReq
      # @return BMGetInventoryResponseType
      def BMGetInventory(options = {} , http_header = {})
        request_object  = BuildBMGetInventory(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMGetInventory", request_hash, http_header)
        BMGetInventoryResponseType.new(response_hash)
      end
      alias_method :bm_get_inventory, :BMGetInventory

      def BuildBMGetInventory(options = {}, &block)
        klass     = BMGetInventoryReq
        options = klass.new(:BMGetInventoryRequest => options) unless options.is_a?(klass)
        object = (options.BMGetInventoryRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_get_inventory, :BuildBMGetInventory

      # Service Call: BMButtonSearch
      # @param BMButtonSearchReq
      # @return BMButtonSearchResponseType
      def BMButtonSearch(options = {} , http_header = {})
        request_object  = BuildBMButtonSearch(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BMButtonSearch", request_hash, http_header)
        BMButtonSearchResponseType.new(response_hash)
      end
      alias_method :bm_button_search, :BMButtonSearch

      def BuildBMButtonSearch(options = {}, &block)
        klass     = BMButtonSearchReq
        options = klass.new(:BMButtonSearchRequest => options) unless options.is_a?(klass)
        object = (options.BMButtonSearchRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bm_button_search, :BuildBMButtonSearch


    end

  end
end
