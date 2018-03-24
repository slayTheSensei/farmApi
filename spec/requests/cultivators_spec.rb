require 'rails_helper'

RSpec.describe "Cultivators", type: :request do
  describe "GET /cultivators" do
    it "works! (now write some real specs)" do
      get cultivators_path
      expect(response).to have_http_status(200)
    end
  end
end
