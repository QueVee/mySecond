class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(user)
		@user = user
		@url  = 'http://mySecond.com/login'
		mail(to: @user.email, subject: 'Welcome to the mySecond App.',
													template_path: 'user_mailer',
													template_name: 'welcome_email')
	end
end
