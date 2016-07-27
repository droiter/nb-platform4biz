class CreateLedgers < ActiveRecord::Migration
  def change
    create_table :ledgers do |t|
      t.integer :calendar_id
      t.integer :type
      t.string :account
      t.float :amount
      t.datetime :created_at,	null: false
      t.datetime :updated_at,	null: false

      t.timestamps null: false
    end
		add_index "ledgers", :calendar_id
  end
end
