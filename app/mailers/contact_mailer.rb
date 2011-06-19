class ContactMailer < ActionMailer::Base
  default :to => "stevensonale@gmail.com"
  
  def contact_message(message)
    @name = message.name
    mail(:subject => message.subject, :name => message.name, :from => message.email, :body => message.body)
  end
end
