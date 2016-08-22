require 'rails_helper'

RSpec.describe "AccountTypes", type: :request do
  describe "GET /account_types" do
    it "works! (now write some real specs)" do
      get account_types_path
      expect(response).to have_http_status(200)
    end
  end
end
