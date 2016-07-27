require 'rails_helper'

RSpec.describe "ledgers/index", type: :view do
  before(:each) do
    assign(:ledgers, [
      Ledger.create!(
        :calendar_id => 1,
        :type => 2,
        :account => "Account",
        :amount => ""
      ),
      Ledger.create!(
        :calendar_id => 1,
        :type => 2,
        :account => "Account",
        :amount => ""
      )
    ])
  end

  it "renders a list of ledgers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Account".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
