class UserMailer < ApplicationMailer
  default from: 'efstathiosstivaros@gmail.com'

  def contact_form(email, name, message)
    @email = email
    @name = name
    @message = message
      mail(:from => email,
          :to => 'efstathiosstivaros@gmail.com',
          :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "SEO Store"
    mail(to: user.email,
        subject: "Welcome to #{@appname}!")
  end
end
