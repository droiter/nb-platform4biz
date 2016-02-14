class DelStatusFromOrganizations < ActiveRecord::Migration
  def change
		remove_column :organizations, :status
  end
end
