class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, force: :cascade do |t|
      t.string :name
      t.string :type
      t.datetime :created_at,	null: false
      t.datetime :updated_at,	null: false

      t.timestamps null: false
    end
  end
end
