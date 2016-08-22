require 'rails_helper'

RSpec.describe "account_types/index", type: :view do
  before(:each) do
    assign(:account_types, [
      AccountType.create!(
        :name => "Name"
      ),
      AccountType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of account_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
