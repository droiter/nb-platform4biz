require "rails_helper"

RSpec.describe LedgerAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ledger_accounts").to route_to("ledger_accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/ledger_accounts/new").to route_to("ledger_accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/ledger_accounts/1").to route_to("ledger_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ledger_accounts/1/edit").to route_to("ledger_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ledger_accounts").to route_to("ledger_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ledger_accounts/1").to route_to("ledger_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ledger_accounts/1").to route_to("ledger_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ledger_accounts/1").to route_to("ledger_accounts#destroy", :id => "1")
    end

  end
end
