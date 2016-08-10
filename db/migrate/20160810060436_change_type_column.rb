class ChangeTypeColumn < ActiveRecord::Migration
  def change
    rename_column :calendars, :type, :calendar_type
    rename_column :statements, :type, :statement_type
    rename_column :ledgers, :type, :ledger_type
    rename_column :accounts, :type, :account_type
  end
end
