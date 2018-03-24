require 'rails_helper'

RSpec.describe "LightModels", type: :request do
  describe "GET /light_models" do
    it "works! (now write some real specs)" do
      get light_models_path
      expect(response).to have_http_status(200)
    end
  end
end
