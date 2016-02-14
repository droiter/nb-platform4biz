class DelStatusFromAssignments < ActiveRecord::Migration
  def change
		remove_column	:assignments, :status
  end
end
