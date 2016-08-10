class AddForeignKeyStatement < ActiveRecord::Migration
  def change
    add_foreign_key :statements, :calendars
  end
end
