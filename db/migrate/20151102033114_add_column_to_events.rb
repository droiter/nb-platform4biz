class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :description, :string
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :location, :string
    add_column :events, :status, :integer
    add_column :events, :user_id, :integer
  end
end
