class UserMailer < ApplicationMailer
  def new_user_email

    mail(to: 'hello@gmail.com', subject: "new registration email!")
  end
end
