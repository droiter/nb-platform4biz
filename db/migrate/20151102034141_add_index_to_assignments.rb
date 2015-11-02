class AddIndexToAssignments < ActiveRecord::Migration
  def change
		add_index :assignments, :user_id
		add_index :assignments, :role_id
		add_index :assignments, :organization_id
  end
end
