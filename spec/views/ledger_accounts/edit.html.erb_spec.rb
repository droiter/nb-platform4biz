require 'rails_helper'

RSpec.describe "ledger_accounts/edit", type: :view do
  before(:each) do
    @ledger_account = assign(:ledger_account, LedgerAccount.create!(
      :ledger_id => 1,
      :account_id => 1
    ))
  end

  it "renders the edit ledger_account form" do
    render

    assert_select "form[action=?][method=?]", ledger_account_path(@ledger_account), "post" do

      assert_select "input#ledger_account_ledger_id[name=?]", "ledger_account[ledger_id]"

      assert_select "input#ledger_account_account_id[name=?]", "ledger_account[account_id]"
    end
  end
end
