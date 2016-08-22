require 'rails_helper'

RSpec.describe "account_types/edit", type: :view do
  before(:each) do
    @account_type = assign(:account_type, AccountType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit account_type form" do
    render

    assert_select "form[action=?][method=?]", account_type_path(@account_type), "post" do

      assert_select "input#account_type_name[name=?]", "account_type[name]"
    end
  end
end
