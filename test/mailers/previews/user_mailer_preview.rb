# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def new_user_email
    # Set up a temporary order for the preview
    mail = Mail.new(name: "Joe Smith", email: "joe@gmail.com")

    UserMailer.with(mail: @mail).new_user_email.deliver_later
  end
end
