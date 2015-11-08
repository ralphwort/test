require "rails_helper"

RSpec.describe BuyAndKeepsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/buy_and_keeps").to route_to("buy_and_keeps#index")
    end

    it "routes to #new" do
      expect(:get => "/buy_and_keeps/new").to route_to("buy_and_keeps#new")
    end

    it "routes to #show" do
      expect(:get => "/buy_and_keeps/1").to route_to("buy_and_keeps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/buy_and_keeps/1/edit").to route_to("buy_and_keeps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/buy_and_keeps").to route_to("buy_and_keeps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/buy_and_keeps/1").to route_to("buy_and_keeps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/buy_and_keeps/1").to route_to("buy_and_keeps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/buy_and_keeps/1").to route_to("buy_and_keeps#destroy", :id => "1")
    end

  end
end
