class AddStatusIdToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :status_id, :integer
  end
end
