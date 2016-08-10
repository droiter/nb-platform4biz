require 'rails_helper'

RSpec.describe "statements/index", type: :view do
  before(:each) do
    assign(:statements, [
      Statement.create!(
        :type => 1,
        :calendar_id => 2
      ),
      Statement.create!(
        :type => 1,
        :calendar_id => 2
      )
    ])
  end

  it "renders a list of statements" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
