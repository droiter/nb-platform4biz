require 'rails_helper'

RSpec.describe "ledger_accounts/show", type: :view do
  before(:each) do
    @ledger_account = assign(:ledger_account, LedgerAccount.create!(
      :ledger_id => 1,
      :account_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
