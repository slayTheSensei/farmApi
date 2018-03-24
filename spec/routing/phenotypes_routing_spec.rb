require "rails_helper"

RSpec.describe PhenotypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phenotypes").to route_to("phenotypes#index")
    end


    it "routes to #show" do
      expect(:get => "/phenotypes/1").to route_to("phenotypes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/phenotypes").to route_to("phenotypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phenotypes/1").to route_to("phenotypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phenotypes/1").to route_to("phenotypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phenotypes/1").to route_to("phenotypes#destroy", :id => "1")
    end

  end
end
