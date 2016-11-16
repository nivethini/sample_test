class UserMailer < ApplicationMailer
	# default from: 'notifications@example.com'
	def welcome_email(user)
	attachments['file.pdf'] = File.read('/home/nivethini/Downloads/FixNix_Offer letter_Nivetheni_probation confirmation.pdf')
	@user = user
	@url = 'http://www.fixnix.co'
	mail(to: @user.email, subject: 'Welcome to My awesome site' )
	
	end

end
