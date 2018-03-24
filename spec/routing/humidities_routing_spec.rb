require "rails_helper"

RSpec.describe HumiditiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/humidities").to route_to("humidities#index")
    end


    it "routes to #show" do
      expect(:get => "/humidities/1").to route_to("humidities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/humidities").to route_to("humidities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/humidities/1").to route_to("humidities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/humidities/1").to route_to("humidities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/humidities/1").to route_to("humidities#destroy", :id => "1")
    end

  end
end
