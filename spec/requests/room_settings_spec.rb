require 'rails_helper'

RSpec.describe "RoomSettings", type: :request do
  describe "GET /room_settings" do
    it "works! (now write some real specs)" do
      get room_settings_path
      expect(response).to have_http_status(200)
    end
  end
end
