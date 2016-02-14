class DelStatusFromRoles < ActiveRecord::Migration
  def change
		remove_column :roles, :status
  end
end
