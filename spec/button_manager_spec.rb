require 'spec_helper'

describe "ButtonManager" do

  before :all do
    @client = PayPal::SDK::ButtonManager::API.new
  end

  describe "Services" do
    PayPal::SDK::ButtonManager::Services.instance_methods.select{|s| s =~ /^[A-Z]/ and s !~ /^Build/ }.each do |service_method|
      it "make empty request to #{service_method}" do
        response = @client.send(service_method, {})
        response.ack.should_not be_nil
      end
    end
  end

  describe "DataTypes" do
    PayPal::SDK::ButtonManager::DataTypes.constants.each do |const_name|
      it "create object for #{const_name}" do
        klass = PayPal::SDK::ButtonManager::DataTypes.const_get(const_name)
        klass.new.should be_a klass
      end
    end
  end

end
