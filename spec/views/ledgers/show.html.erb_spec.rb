require 'rails_helper'

RSpec.describe "ledgers/show", type: :view do
  before(:each) do
    @ledger = assign(:ledger, Ledger.create!(
      :calendar_id => 1,
      :type => 2,
      :account => "Account",
      :amount => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Account/)
    expect(rendered).to match(//)
  end
end
