class ConsultationConfirmationMailer < ApplicationMailer
	default from: 'jirehbattung.dev@gmail.com'

	def consultation_confirmation
		@consultation = params[:consultation]
		mail(to: @consultation.email, subject: 'Your consultation has been scheduled')
	end
end
