class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :post_title
      t.date :post_date
      t.text :post_body

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
