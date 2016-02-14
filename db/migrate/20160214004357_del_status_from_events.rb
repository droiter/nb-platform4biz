class DelStatusFromEvents < ActiveRecord::Migration
  def change
		remove_column :events, :status
  end
end
