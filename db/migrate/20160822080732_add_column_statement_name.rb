class AddColumnStatementName < ActiveRecord::Migration
  def change
		add_column :statements, :name, :string
  end
end
