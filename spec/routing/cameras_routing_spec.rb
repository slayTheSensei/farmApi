require "rails_helper"

RSpec.describe CamerasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cameras").to route_to("cameras#index")
    end


    it "routes to #show" do
      expect(:get => "/cameras/1").to route_to("cameras#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cameras").to route_to("cameras#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cameras/1").to route_to("cameras#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cameras/1").to route_to("cameras#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cameras/1").to route_to("cameras#destroy", :id => "1")
    end

  end
end
