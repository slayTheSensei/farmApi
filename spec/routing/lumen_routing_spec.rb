require "rails_helper"

RSpec.describe LumenController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lumen").to route_to("lumen#index")
    end


    it "routes to #show" do
      expect(:get => "/lumen/1").to route_to("lumen#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lumen").to route_to("lumen#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lumen/1").to route_to("lumen#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lumen/1").to route_to("lumen#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lumen/1").to route_to("lumen#destroy", :id => "1")
    end

  end
end
