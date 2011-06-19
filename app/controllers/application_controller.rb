class ApplicationController < ActionController::Base
   helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
 
helper_method :admin? 
 
protected


def authorize
  unless admin?
    flash[:error] = "unauthorized access"
    redirect_to login_path
    false
  end
end

def admin?
  session[:username] == "pbear"
  session[:password] == "Alum79*"  
end
  
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  protect_from_forgery
end
