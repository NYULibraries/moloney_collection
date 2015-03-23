require "rails_helper"

RSpec.describe GaelicAthletesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gaelic_athletes").to route_to("gaelic_athletes#index")
    end

    it "routes to #new" do
      expect(:get => "/gaelic_athletes/new").to route_to("gaelic_athletes#new")
    end

    it "routes to #show" do
      expect(:get => "/gaelic_athletes/1").to route_to("gaelic_athletes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gaelic_athletes/1/edit").to route_to("gaelic_athletes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gaelic_athletes").to route_to("gaelic_athletes#create")
    end

    it "routes to #update" do
      expect(:put => "/gaelic_athletes/1").to route_to("gaelic_athletes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gaelic_athletes/1").to route_to("gaelic_athletes#destroy", :id => "1")
    end

  end
end
