class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email, to: 'guillaumeledenmat@hotmail.com', subject: "A new contact form message from #{name}")
  end
  def welcome(user)
    @appname = "InAudible"
    mail(to: user.email,
    subject: "Welcome to #{@appname}!")
  end
  def order_placed(user, product)
    @appname = "InAudible"
    @product = product
    @user = user
    mail(to: user.email,
    subject: "Your oder at #{@appname}")
  end
end
