require 'rails_helper'

RSpec.describe "ledger_accounts/index", type: :view do
  before(:each) do
    assign(:ledger_accounts, [
      LedgerAccount.create!(
        :ledger_id => 1,
        :account_id => 2
      ),
      LedgerAccount.create!(
        :ledger_id => 1,
        :account_id => 2
      )
    ])
  end

  it "renders a list of ledger_accounts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
