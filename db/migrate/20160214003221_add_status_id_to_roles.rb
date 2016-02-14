class AddStatusIdToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :status_id, :integer
  end
end
