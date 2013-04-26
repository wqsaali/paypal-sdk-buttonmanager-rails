require 'spec_helper'

describe "ButtonManagerSamples" do

  before :each do
    visit button_manager_samples_path
  end

  it_check_sample "Create button"

  it_check_sample "Button search" do
    fill_in "Start date", :with => "2012-12-03T14:09:40+00:00"
    fill_in "End date", :with => "2012-12-03T14:09:41+00:00"
  end

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
