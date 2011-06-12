class Movie < ActiveRecord::Base
  require 'paperclip'
  has_attached_file :poster
  
  def self.all
    find(:all,  :order => "date_seen DESC")
  end
  
  def self.find_recent
    find(:first, :order => "created_at DESC")
  end
  
  has_attached_file :poster,
    :styles => { :medium => "300x300>", :thumb => "100>x100" }
end
