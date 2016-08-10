class CreateCalendars < ActiveRecord::Migration
  def change
    drop_table :calendars
    create_table :calendars do |t|
      t.string :type
      t.date :from
      t.date :to
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
