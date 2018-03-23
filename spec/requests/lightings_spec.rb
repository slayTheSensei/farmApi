require 'rails_helper'

RSpec.describe "Lightings", type: :request do
  describe "GET /lightings" do
    it "works! (now write some real specs)" do
      get lightings_path
      expect(response).to have_http_status(200)
    end
  end
end
