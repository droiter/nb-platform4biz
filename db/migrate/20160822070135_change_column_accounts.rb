class ChangeColumnAccounts < ActiveRecord::Migration
  def change
		rename_column :accounts, :account_type, :account_type_id
  end
end
