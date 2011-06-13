class AddDanceTimeAndLessonThreeTime < ActiveRecord::Migration
  def self.up
    add_column :dances, :dance_time, :time
    add_column :dances, :lesson_three_time, :time
  end

  def self.down
  end
end
