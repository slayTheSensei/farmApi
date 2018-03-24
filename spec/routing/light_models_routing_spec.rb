require "rails_helper"

RSpec.describe LightModelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/light_models").to route_to("light_models#index")
    end


    it "routes to #show" do
      expect(:get => "/light_models/1").to route_to("light_models#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/light_models").to route_to("light_models#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/light_models/1").to route_to("light_models#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/light_models/1").to route_to("light_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/light_models/1").to route_to("light_models#destroy", :id => "1")
    end

  end
end
