class SimplePagesController < ApplicationController
  def landing_page
    @featured_product = Product.first
    @products = Product.all
  end
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'your-email@example.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
end
