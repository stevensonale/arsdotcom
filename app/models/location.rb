class Location < ActiveRecord::Base
    acts_as_gmappable
    
     def self.all
      find(:all,  :order => "tripday_date ASC")
    end
  
    
    def gmaps4rails_address
      "#{self.location_name}, #{self.location_address}"
    end
    
    def gmaps4rails_infowindow
      "<h4>#{location_name}</h4>" << "<h4>#{location_address}</h4>"
    end
end
