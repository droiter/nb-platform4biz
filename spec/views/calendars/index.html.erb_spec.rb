require 'rails_helper'

RSpec.describe "calendars/index", type: :view do
  before(:each) do
    assign(:calendars, [
      Calendar.create!(
        :type => "Type"
      ),
      Calendar.create!(
        :type => "Type"
      )
    ])
  end

  it "renders a list of calendars" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
