require 'rails_helper'

RSpec.describe "AirQualities", type: :request do
  describe "GET /air_qualities" do
    it "works! (now write some real specs)" do
      get air_qualities_path
      expect(response).to have_http_status(200)
    end
  end
end
