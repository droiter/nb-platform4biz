require 'rails_helper'

RSpec.describe "statements/show", type: :view do
  before(:each) do
    @statement = assign(:statement, Statement.create!(
      :type => 1,
      :calendar_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
