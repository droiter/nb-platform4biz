require 'rails_helper'

RSpec.describe "LedgerTypes", type: :request do
  describe "GET /ledger_types" do
    it "works! (now write some real specs)" do
      get ledger_types_path
      expect(response).to have_http_status(200)
    end
  end
end
