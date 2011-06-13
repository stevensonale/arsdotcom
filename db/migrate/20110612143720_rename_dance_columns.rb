class RenameDanceColumns < ActiveRecord::Migration
  def self.up
    rename_column :dances, :event, :dance_name
    rename_column :dances, :event_location, :dance_location
    rename_column :dances, :event_time, :dance_time
    rename_column :dances, :event_description, :dance_description
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end


end
