require 'rails_helper'

RSpec.describe "statement_types/index", type: :view do
  before(:each) do
    assign(:statement_types, [
      StatementType.create!(
        :name => "Name"
      ),
      StatementType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of statement_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
