require "rails_helper"

RSpec.describe LightingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lightings").to route_to("lightings#index")
    end


    it "routes to #show" do
      expect(:get => "/lightings/1").to route_to("lightings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lightings").to route_to("lightings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lightings/1").to route_to("lightings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lightings/1").to route_to("lightings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lightings/1").to route_to("lightings#destroy", :id => "1")
    end

  end
end
