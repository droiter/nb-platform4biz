class AddStatusToRole < ActiveRecord::Migration
  def change
    add_column :roles, :status, :integer
  end
end
