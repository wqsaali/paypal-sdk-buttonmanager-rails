require 'spec_helper'

describe "ButtonManagerSamples" do

  before :each do
    visit button_manager_samples_path
  end

  it_check_sample "Create button"

  it_check_sample "Button search"

  describe "With hosted button" do
    before :each do
      check_sample "Create button"
      @hosted_button = get_response_value("HostedButtonID")
    end

    it_check_sample "Manage button status" do
      fill_in "Hosted button", :with => @hosted_button
    end

    it_check_sample "Get button details" do
      fill_in "Hosted button", :with => @hosted_button
    end

    it_check_sample "Set inventory" do
      fill_in "Hosted button", :with => @hosted_button
    end

    describe "With Set inventory" do
      before :each do
        check_sample "Set inventory" do
          fill_in "Hosted button", :with => @hosted_button
        end
      end

      it_check_sample "Get inventory" do
        fill_in "Hosted button", :with => @hosted_button
      end
    end
  end

end
