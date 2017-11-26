class MailerMailer < ApplicationMailer

  def new_sign_up(user)
    @user = user
    mail to: @user.email, subject: "Hola"
  end
end
