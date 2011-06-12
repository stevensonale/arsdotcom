class SessionsController < ApplicationController
   def new  
   end  
   
   def create 
     session[:username] = params[:username]
     session[:password] = params[:password]  
     flash[:notice] = "Successfully logged in"  
     redirect_to movies_path  
   end  
     
   def destroy  
     reset_session  
     flash[:notice] = "Successfully logged out"  
     redirect_to movies_path
   end 
end
