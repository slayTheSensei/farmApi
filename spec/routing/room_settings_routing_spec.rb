require "rails_helper"

RSpec.describe RoomSettingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/room_settings").to route_to("room_settings#index")
    end


    it "routes to #show" do
      expect(:get => "/room_settings/1").to route_to("room_settings#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/room_settings").to route_to("room_settings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/room_settings/1").to route_to("room_settings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/room_settings/1").to route_to("room_settings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/room_settings/1").to route_to("room_settings#destroy", :id => "1")
    end

  end
end
