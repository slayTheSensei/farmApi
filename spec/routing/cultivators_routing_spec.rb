require "rails_helper"

RSpec.describe CultivatorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cultivators").to route_to("cultivators#index")
    end


    it "routes to #show" do
      expect(:get => "/cultivators/1").to route_to("cultivators#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cultivators").to route_to("cultivators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cultivators/1").to route_to("cultivators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cultivators/1").to route_to("cultivators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cultivators/1").to route_to("cultivators#destroy", :id => "1")
    end

  end
end
