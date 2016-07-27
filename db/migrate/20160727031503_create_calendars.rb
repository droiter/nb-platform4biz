class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars, force: :cascade do |t|
      t.string :type
      t.datetime :from
      t.datetime :to
      t.datetime :created_at, 	null: false
      t.datetime :updated_at,		null: false

      t.timestamps null: false
    end
  end
end
