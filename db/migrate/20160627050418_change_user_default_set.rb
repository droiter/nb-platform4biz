class ChangeUserDefaultSet < ActiveRecord::Migration
  def change
		change_column :users, :status_id, :integer, :default => 1, :null => false
		change_column :users, :user_type_id, :integer, :default => 1, :null => false
  end
end
