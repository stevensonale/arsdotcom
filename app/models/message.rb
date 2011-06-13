class Message < ActiveRecord::Base
   validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                   
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
                    
 validates :subject,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}     
                    
validates :body,  :presence => true, 
                    :length => {:minimum => 1}                                
end
