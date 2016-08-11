require 'rails_helper'

RSpec.describe "statement_types/new", type: :view do
  before(:each) do
    assign(:statement_type, StatementType.new(
      :name => "MyString"
    ))
  end

  it "renders new statement_type form" do
    render

    assert_select "form[action=?][method=?]", statement_types_path, "post" do

      assert_select "input#statement_type_name[name=?]", "statement_type[name]"
    end
  end
end
