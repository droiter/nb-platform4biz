require 'rails_helper'

RSpec.describe "statement_types/edit", type: :view do
  before(:each) do
    @statement_type = assign(:statement_type, StatementType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit statement_type form" do
    render

    assert_select "form[action=?][method=?]", statement_type_path(@statement_type), "post" do

      assert_select "input#statement_type_name[name=?]", "statement_type[name]"
    end
  end
end
