require "rails_helper"

RSpec.describe LedgerTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ledger_types").to route_to("ledger_types#index")
    end

    it "routes to #new" do
      expect(:get => "/ledger_types/new").to route_to("ledger_types#new")
    end

    it "routes to #show" do
      expect(:get => "/ledger_types/1").to route_to("ledger_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ledger_types/1/edit").to route_to("ledger_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ledger_types").to route_to("ledger_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ledger_types/1").to route_to("ledger_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ledger_types/1").to route_to("ledger_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ledger_types/1").to route_to("ledger_types#destroy", :id => "1")
    end

  end
end
