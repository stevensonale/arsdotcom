class RemoveDateFromDances < ActiveRecord::Migration
  def self.up
    remove_column :dances, :event_date
  end

  def self.down
    add_column :dances, :event_date, :date
  end
end
