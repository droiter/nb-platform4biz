class ChangeColumnAccountType < ActiveRecord::Migration
  def change
		change_column :accounts, :account_type_id, 'integer USING CAST(account_type_id AS integer)'
  end
end
