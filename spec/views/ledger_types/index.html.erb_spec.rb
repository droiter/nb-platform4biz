require 'rails_helper'

RSpec.describe "ledger_types/index", type: :view do
  before(:each) do
    assign(:ledger_types, [
      LedgerType.create!(
        :name => "Name"
      ),
      LedgerType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of ledger_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
