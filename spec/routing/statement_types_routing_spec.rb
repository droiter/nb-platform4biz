require "rails_helper"

RSpec.describe StatementTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/statement_types").to route_to("statement_types#index")
    end

    it "routes to #new" do
      expect(:get => "/statement_types/new").to route_to("statement_types#new")
    end

    it "routes to #show" do
      expect(:get => "/statement_types/1").to route_to("statement_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/statement_types/1/edit").to route_to("statement_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/statement_types").to route_to("statement_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/statement_types/1").to route_to("statement_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/statement_types/1").to route_to("statement_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/statement_types/1").to route_to("statement_types#destroy", :id => "1")
    end

  end
end
