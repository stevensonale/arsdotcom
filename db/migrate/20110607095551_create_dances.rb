class CreateDances < ActiveRecord::Migration
  def self.up
    create_table :dances do |t|
      t.string :event
      t.string :event_location
      t.date :event_date
      t.time :event_time
      t.text :event_description

      t.timestamps
    end
  end

  def self.down
    drop_table :dances
  end
end
