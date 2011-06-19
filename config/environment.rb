# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Blogonhr::Application.initialize!

Blogonhr::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  
  config.action_mailer.smtp_settings = {
    :address  => "smtp.gmail.com",
    :port  => 587,
    :user_name  => "stevensonale",
    :password  => "polarbear79",
    :authentication  => "plain",
    :enable_starttls_auto => true 
}
end
