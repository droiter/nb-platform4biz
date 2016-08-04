require 'rails_helper'

RSpec.describe "LedgerAccounts", type: :request do
  describe "GET /ledger_accounts" do
    it "works! (now write some real specs)" do
      get ledger_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
