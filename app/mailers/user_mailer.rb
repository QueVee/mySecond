class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome to the mySecond App.',
													template_path: 'user_mailer',
													template_name: 'welcome_email')
	end

	def invite_email(second_name, second_email, invite_token)
		@second_name = second_name
		@second_email = second_email 
		@invite_token = invite_token
		mail(to: @second_email, subject: 'Invitation to be mySecond.',
														template_path: 'user_mailer',
														template_name: 'invite_email')
	end
end
