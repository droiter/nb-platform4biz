class CreateLedgerAccounts < ActiveRecord::Migration
  def change
    create_table :ledger_accounts do |t|
      t.string :name
      t.string :type
			t.integer	:ledger_id
			t.integer	:account_id
      t.datetime :created_at,	null: false
      t.datetime :updated_at,	null: false

      t.timestamps null: false
    end
		add_index :ledger_accounts, :ledger_id
		add_index :ledger_accounts, :account_id
  end
end
