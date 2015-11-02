class AddColumnToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :description, :string
  end
end
