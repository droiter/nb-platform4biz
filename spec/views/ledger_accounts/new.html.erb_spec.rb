require 'rails_helper'

RSpec.describe "ledger_accounts/new", type: :view do
  before(:each) do
    assign(:ledger_account, LedgerAccount.new(
      :ledger_id => 1,
      :account_id => 1
    ))
  end

  it "renders new ledger_account form" do
    render

    assert_select "form[action=?][method=?]", ledger_accounts_path, "post" do

      assert_select "input#ledger_account_ledger_id[name=?]", "ledger_account[ledger_id]"

      assert_select "input#ledger_account_account_id[name=?]", "ledger_account[account_id]"
    end
  end
end
