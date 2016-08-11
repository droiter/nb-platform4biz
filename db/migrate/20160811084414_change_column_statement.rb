class ChangeColumnStatement < ActiveRecord::Migration
  def change
    rename_column :statements, :statement_type, :statement_type_id
  end
end
