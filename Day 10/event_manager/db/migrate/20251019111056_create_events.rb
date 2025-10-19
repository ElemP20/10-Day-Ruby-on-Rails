class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.integer :attendees_count, default: 0, null: false
      t.string :status

      t.timestamps
    end
  end
end
