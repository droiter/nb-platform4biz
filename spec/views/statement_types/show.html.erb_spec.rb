require 'rails_helper'

RSpec.describe "statement_types/show", type: :view do
  before(:each) do
    @statement_type = assign(:statement_type, StatementType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
