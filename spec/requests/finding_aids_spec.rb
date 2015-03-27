require 'rails_helper'

RSpec.describe "FindingAids", :type => :request do
  describe "GET /finding_aids" do
    it "works! (now write some real specs)" do
      get finding_aids_path
      expect(response).to have_http_status(200)
    end
  end
end
