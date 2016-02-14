class AddStatusIdToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :status_id, :integer
  end
end
