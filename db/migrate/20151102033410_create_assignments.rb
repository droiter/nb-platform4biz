class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :role_id
      t.integer :organization_id
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.string :description

      t.timestamps null: false
    end
  end
end
