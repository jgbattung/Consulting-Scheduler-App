class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_stripe_key
  before_action :set_query
  

  def set_query
		@query = User.ransack(params[:q])
	end

  private

  def set_stripe_key
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret_key)
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :consultation_link, :specialization, :image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :consultation_link, :specialization, :image])
    end
end
