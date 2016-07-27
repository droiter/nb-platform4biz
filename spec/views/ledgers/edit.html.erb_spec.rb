require 'rails_helper'

RSpec.describe "ledgers/edit", type: :view do
  before(:each) do
    @ledger = assign(:ledger, Ledger.create!(
      :calendar_id => 1,
      :type => 1,
      :account => "MyString",
      :amount => ""
    ))
  end

  it "renders the edit ledger form" do
    render

    assert_select "form[action=?][method=?]", ledger_path(@ledger), "post" do

      assert_select "input#ledger_calendar_id[name=?]", "ledger[calendar_id]"

      assert_select "input#ledger_type[name=?]", "ledger[type]"

      assert_select "input#ledger_account[name=?]", "ledger[account]"

      assert_select "input#ledger_amount[name=?]", "ledger[amount]"
    end
  end
end
