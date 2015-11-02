class AddStatusToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :status, :integer
  end
end
