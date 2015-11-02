class AddColumnToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :industry, :string
    add_column :organizations, :employee_num, :integer
  end
end
