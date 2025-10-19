class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :speaker_name
      t.datetime :start_time
      t.integer :duration, default: 30, null: false
      t.string :activity_type
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
