class UserMailer < ActionMailer::Base
	default :from => "LouisAngelini@gmail.com"

  def registration_confirmation(user)
  	@user = user 
  	mail(:to => user.email, :subject => "Registered")
  end
end
