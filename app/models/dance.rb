class Dance < ActiveRecord::Base
   require 'paperclip'
  has_attached_file :photo
  
  def self.all
    find(:all,  :order => "dance_date_one DESC")
  end
  
  def self.find_recent
    find(:first, :order => "created_at DESC")
  end
  
  has_attached_file :photo,
    :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100>x100" }
end
