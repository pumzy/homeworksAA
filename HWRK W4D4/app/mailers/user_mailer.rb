class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/session/new'
    @betterurl = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
    mail(to: user.username, subject: "Welcome to 99 Cats")
  end


end
