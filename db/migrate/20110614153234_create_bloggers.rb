class CreateBloggers < ActiveRecord::Migration
  def self.up
    create_table :bloggers do |t|
      t.string :title
      t.date :post_date
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :bloggers
  end
end
