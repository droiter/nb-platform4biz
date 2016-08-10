class ChangeColumnLedger < ActiveRecord::Migration
  def change
    remove_column :ledgers, :calendar_id
    add_column :ledgers, :statement_id, :integer
    add_foreign_key :ledgers, :statements
  end
end
