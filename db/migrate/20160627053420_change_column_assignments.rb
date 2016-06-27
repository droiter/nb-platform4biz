class ChangeColumnAssignments < ActiveRecord::Migration
  def change
		change_column :assignments, :user_id, :integer,  :null => false
		change_column :assignments, :role_id, :integer, :null => false
		change_column :assignments, :organization_id, :integer, :null => false
		change_column :assignments, :status_id, :integer, :default => 0, :null => false
  end
end
