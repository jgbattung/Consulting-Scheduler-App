class WebhooksController < ApplicationController
	skip_before_action :verify_authenticity_token

	def create
		payload = request.body.read
		signature_header = request.env['HTTP_STRIPE_SIGNATURE']	
		endpoint_secret = Rails.application.credentials.dig(:stripe, :whsc)
		event = nil

		begin
			event = Stripe::Webhook.construct_event(
				payload, signature_header, endpoint_secret
			)
		rescue JSON::ParserError => e
			render json: {message: e}, status: 400
		rescue Stripe::SignatureVerificationError => e
			render json: {message: e}, status: 400
			return
		end


		case event.type
		when 'payment_intent.succeeded'
			# send email for successfull payment
			@user = User.find(event.data.object.metadata['user_id'])
			@consultations = Consultation.where(consultation_type_id: @user.consultation_type_ids)
			@consultation = @consultations.last
			# @consultation.approved!
			@consultation.update(customer_paid: true, status: "approved")
		when 'payment_intent.processing'
			# send email notifying user that their payment is processing
		when 'payment_intent.payment_failed'
			# send email notifying user that payment was failed. unapprove booking.
		else
			puts "Unhandled event type: #{event.type}"
		end

	end
end