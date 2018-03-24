require 'rails_helper'

RSpec.describe "Lumen", type: :request do
  describe "GET /lumen" do
    it "works! (now write some real specs)" do
      get lumen_path
      expect(response).to have_http_status(200)
    end
  end
end
