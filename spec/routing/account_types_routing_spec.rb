require "rails_helper"

RSpec.describe AccountTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/account_types").to route_to("account_types#index")
    end

    it "routes to #new" do
      expect(:get => "/account_types/new").to route_to("account_types#new")
    end

    it "routes to #show" do
      expect(:get => "/account_types/1").to route_to("account_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/account_types/1/edit").to route_to("account_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/account_types").to route_to("account_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/account_types/1").to route_to("account_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/account_types/1").to route_to("account_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/account_types/1").to route_to("account_types#destroy", :id => "1")
    end

  end
end
