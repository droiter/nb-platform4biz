require 'rails_helper'

RSpec.describe "statements/edit", type: :view do
  before(:each) do
    @statement = assign(:statement, Statement.create!(
      :type => 1,
      :calendar_id => 1
    ))
  end

  it "renders the edit statement form" do
    render

    assert_select "form[action=?][method=?]", statement_path(@statement), "post" do

      assert_select "input#statement_type[name=?]", "statement[type]"

      assert_select "input#statement_calendar_id[name=?]", "statement[calendar_id]"
    end
  end
end
