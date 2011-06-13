class AddLessonDescriptionsToDance < ActiveRecord::Migration
  def self.up
    add_column :dances, :lesson_one_description, :string
    add_column :dances, :lesson_two_description, :string
    add_column :dances, :lesson_three_description, :string
  end

  def self.down
  end
end
