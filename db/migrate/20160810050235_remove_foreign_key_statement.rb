class RemoveForeignKeyStatement < ActiveRecord::Migration
  def change
    remove_foreign_key :statements, :calendars
    remove_foreign_key :ledgers, :statements
  end
end
