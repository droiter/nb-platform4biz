require 'rails_helper'

RSpec.describe "StatementTypes", type: :request do
  describe "GET /statement_types" do
    it "works! (now write some real specs)" do
      get statement_types_path
      expect(response).to have_http_status(200)
    end
  end
end
