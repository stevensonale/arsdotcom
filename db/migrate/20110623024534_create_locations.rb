class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :location_name
      t.string :location_address
      t.float :longitude
      t.float :latitude
      t.date :tripday_date
      t.text :tripday_log

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
