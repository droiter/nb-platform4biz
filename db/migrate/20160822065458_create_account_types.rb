class CreateAccountTypes < ActiveRecord::Migration
  def change
    create_table :account_types do |t|
      t.string :name
			t.datetime :created_at, null: false
			t.datetime :updated_at, null: false
      t.timestamps null: false
    end
  end
end
