class ChangeColumnLedger2 < ActiveRecord::Migration
  def change
		rename_column :ledgers, :ledger_type, :ledger_type_id
  end
end
