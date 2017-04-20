class UserMailer < ApplicationMailer
  default from: 'efstathiosstivaros@gmail.com'

  def contact_form(email, name, message)
    @message = message
      mail(:from => email,
          :to => 'efstathiosstivaros@gmail.com',
          :subject => "A new contact form message from #{name}")
  end
end
