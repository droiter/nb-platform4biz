class CreateLedgerAccounts < ActiveRecord::Migration
  def change
    create_table :ledger_accounts do |t|
      t.integer :ledger_id
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
