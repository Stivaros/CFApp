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

  def purchase_confirmation(email, name, description, price)
    @email = email
    @name = name
    @description = description
    @price = price

    mail(to: email,
        subject: "Thank you for purchasing #{name}")
  end
  
end
