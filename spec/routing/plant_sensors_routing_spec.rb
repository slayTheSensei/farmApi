require "rails_helper"

RSpec.describe PlantSensorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plant_sensors").to route_to("plant_sensors#index")
    end


    it "routes to #show" do
      expect(:get => "/plant_sensors/1").to route_to("plant_sensors#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/plant_sensors").to route_to("plant_sensors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/plant_sensors/1").to route_to("plant_sensors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/plant_sensors/1").to route_to("plant_sensors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plant_sensors/1").to route_to("plant_sensors#destroy", :id => "1")
    end

  end
end
