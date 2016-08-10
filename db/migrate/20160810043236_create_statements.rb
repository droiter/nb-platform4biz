class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.integer :type
      t.integer :calendar_id
      t.datetime :created_at,	null: false
      t.datetime :updated_at, null: false

      t.timestamps null: false
    end
  end
end
