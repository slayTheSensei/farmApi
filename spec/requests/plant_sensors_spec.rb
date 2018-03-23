require 'rails_helper'

RSpec.describe "PlantSensors", type: :request do
  describe "GET /plant_sensors" do
    it "works! (now write some real specs)" do
      get plant_sensors_path
      expect(response).to have_http_status(200)
    end
  end
end
