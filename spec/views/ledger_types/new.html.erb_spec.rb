require 'rails_helper'

RSpec.describe "ledger_types/new", type: :view do
  before(:each) do
    assign(:ledger_type, LedgerType.new(
      :name => "MyString"
    ))
  end

  it "renders new ledger_type form" do
    render

    assert_select "form[action=?][method=?]", ledger_types_path, "post" do

      assert_select "input#ledger_type_name[name=?]", "ledger_type[name]"
    end
  end
end
