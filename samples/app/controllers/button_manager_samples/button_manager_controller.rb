require_dependency "button_manager_samples/application_controller"

module ButtonManagerSamples
  class ButtonManagerController < ApplicationController
    include PayPal::SDK::ButtonManager

    def index
      redirect_to :action => :bm_create_button
    end

    def ipn_notify
      if PayPal::SDK::Core::API::IPN.valid?(request.raw_post)
        logger.info("IPN message: VERIFIED")
        render :text => "VERIFIED"
      else
        logger.info("IPN message: INVALID")
        render :text => "INVALID"
      end
    end

    def bm_create_button
      @bm_create_button = api.build_bm_create_button(params[:BMCreateButtonRequestType] || default_api_value)
      if params[:ButtonVar]
        @button_var = params[:ButtonVar]
        @bm_create_button.ButtonVar = @button_var.map{|key, val| "#{key}=#{val}" }
      else
        @button_var = {}
        @bm_create_button.ButtonVar.each do |str|
          ary = str.split("=", 2)
          @button_var.merge! ary[0] => ary[1]
        end
        @button_var["return"] ||= button_manager_url(:bm_create_button)
        @button_var["notify_url"] ||= button_manager_url(:ipn_notify)
      end
      @bm_create_button_response = api.bm_create_button(@bm_create_button) if request.post?
    end

    def bm_update_button
      @bm_update_button = api.build_bm_update_button(params[:BMUpdateButtonRequestType] || default_api_value)
      @bm_update_button_response = api.bm_update_button(@bm_update_button) if request.post?
    end

    def bm_manage_button_status
      @bm_manage_button_status = api.build_bm_manage_button_status(params[:BMManageButtonStatusRequestType] || default_api_value)
      @bm_manage_button_status_response = api.bm_manage_button_status(@bm_manage_button_status) if request.post?
    end

    def bm_get_button_details
      @bm_get_button_details = api.build_bm_get_button_details(params[:BMGetButtonDetailsRequestType] || default_api_value)
      @bm_get_button_details_response = api.bm_get_button_details(@bm_get_button_details) if request.post?
    end

    def bm_set_inventory
      @bm_set_inventory = api.build_bm_set_inventory(params[:BMSetInventoryRequestType] || default_api_value)
      @bm_set_inventory_response = api.bm_set_inventory(@bm_set_inventory) if request.post?
    end

    def bm_get_inventory
      @bm_get_inventory = api.build_bm_get_inventory(params[:BMGetInventoryRequestType] || default_api_value)
      @bm_get_inventory_response = api.bm_get_inventory(@bm_get_inventory) if request.post?
    end

    def bm_button_search
      @bm_button_search = api.build_bm_button_search(params[:BMButtonSearchRequestType] || default_api_value)
      @bm_button_search_response = api.bm_button_search(@bm_button_search) if request.post?
    end

    private

    def api
      @api ||= API.new
    end
  end
end

