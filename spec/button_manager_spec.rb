require 'spec_helper'

describe "ButtonManager" do

  before :all do
    @api = PayPal::SDK::ButtonManagerRails::API.new
  end

  describe "Services" do
    PayPal::SDK::ButtonManagerRails::Services.instance_methods.select{|s| s =~ /^[A-Z]/ and s !~ /^Build/ }.each do |service_method|
      it "make empty request to #{service_method}" do
        response = @api.send(service_method, {})
        response.ack.should_not be_nil
      end
    end
  end

  it "Validate ipn message" do
    @api.ipn_valid?("Invalid").should be_false
  end

end
