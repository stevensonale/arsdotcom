class RemoveDateTimeFromDances < ActiveRecord::Migration
  def self.up
    remove_column :dances, :dance_time
  end

  def self.down
  end
end
