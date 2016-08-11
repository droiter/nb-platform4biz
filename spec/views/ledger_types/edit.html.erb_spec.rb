require 'rails_helper'

RSpec.describe "ledger_types/edit", type: :view do
  before(:each) do
    @ledger_type = assign(:ledger_type, LedgerType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit ledger_type form" do
    render

    assert_select "form[action=?][method=?]", ledger_type_path(@ledger_type), "post" do

      assert_select "input#ledger_type_name[name=?]", "ledger_type[name]"
    end
  end
end
