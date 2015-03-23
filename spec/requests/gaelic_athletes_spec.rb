require 'rails_helper'

RSpec.describe "GaelicAthletes", :type => :request do
  describe "GET /gaelic_athletes" do
    it "works! (now write some real specs)" do
      get gaelic_athletes_path
      expect(response).to have_http_status(200)
    end
  end
end
