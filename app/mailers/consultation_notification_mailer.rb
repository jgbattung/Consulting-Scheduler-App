class ConsultationNotificationMailer < ApplicationMailer

	def consultation_notification
		@user = params[:user]
		@url = 'http://localhost:3000/users/sign_in'
		mail(to: @user.email, subject: 'New Consultation Scheduled!')
	end
end
