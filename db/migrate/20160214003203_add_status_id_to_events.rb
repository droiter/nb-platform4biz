class AddStatusIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :status_id, :integer
  end
end
