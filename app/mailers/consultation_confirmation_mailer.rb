class ConsultationConfirmationMailer < ApplicationMailer
	default from: 'jirehbattung.dev@gmail.com'

	def consultation_confirmation
		@user = params[:user]
	end
end
