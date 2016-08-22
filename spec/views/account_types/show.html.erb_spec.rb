require 'rails_helper'

RSpec.describe "account_types/show", type: :view do
  before(:each) do
    @account_type = assign(:account_type, AccountType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
