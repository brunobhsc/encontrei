require 'rails_helper'

RSpec.describe "Multicast::Presets", type: :request do
  describe "GET /multicast_presets" do
    it "works! (now write some real specs)" do
      get multicast_presets_path
      expect(response).to have_http_status(200)
    end
  end
end
