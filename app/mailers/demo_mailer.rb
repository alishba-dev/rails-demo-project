class DemoMailer < ApplicationMailer
  default from: 'hello@gmail.com'


  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: 'hello@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
