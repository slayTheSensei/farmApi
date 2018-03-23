require "rails_helper"

RSpec.describe AirQualitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/air_qualities").to route_to("air_qualities#index")
    end


    it "routes to #show" do
      expect(:get => "/air_qualities/1").to route_to("air_qualities#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/air_qualities").to route_to("air_qualities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/air_qualities/1").to route_to("air_qualities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/air_qualities/1").to route_to("air_qualities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/air_qualities/1").to route_to("air_qualities#destroy", :id => "1")
    end

  end
end
