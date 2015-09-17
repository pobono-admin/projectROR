 class UserMailer < ApplicationMailer

  default from: 'pobono.liren@gmail.com'

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end


end
