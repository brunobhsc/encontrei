require "rails_helper"

RSpec.describe Multicast::PresetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/multicast/presets").to route_to("multicast/presets#index")
    end

    it "routes to #new" do
      expect(:get => "/multicast/presets/new").to route_to("multicast/presets#new")
    end

    it "routes to #show" do
      expect(:get => "/multicast/presets/1").to route_to("multicast/presets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/multicast/presets/1/edit").to route_to("multicast/presets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/multicast/presets").to route_to("multicast/presets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/multicast/presets/1").to route_to("multicast/presets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/multicast/presets/1").to route_to("multicast/presets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/multicast/presets/1").to route_to("multicast/presets#destroy", :id => "1")
    end

  end
end
