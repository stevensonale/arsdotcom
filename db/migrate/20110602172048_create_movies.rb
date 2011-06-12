class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :movie_name
      t.date :date_seen
      t.text :movie_synopsis
      t.text :movie_review

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
