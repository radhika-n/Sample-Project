class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.time :event_time
      t.string :status
      t.string :place

      t.timestamps null: false
    end
  end
end
