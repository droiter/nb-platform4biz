require 'rails_helper'

RSpec.describe "statements/new", type: :view do
  before(:each) do
    assign(:statement, Statement.new(
      :type => 1,
      :calendar_id => 1
    ))
  end

  it "renders new statement form" do
    render

    assert_select "form[action=?][method=?]", statements_path, "post" do

      assert_select "input#statement_type[name=?]", "statement[type]"

      assert_select "input#statement_calendar_id[name=?]", "statement[calendar_id]"
    end
  end
end
