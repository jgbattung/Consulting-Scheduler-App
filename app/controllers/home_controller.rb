class HomeController < ApplicationController
  def index
  end

  def dashboard
    @consultation_types = current_user.consultation_types
    @consultations = Consultation.where(consultation_type_id: current_user.consultation_type_ids)
  end
end
