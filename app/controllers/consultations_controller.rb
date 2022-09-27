class ConsultationsController < ApplicationController
  before_action :set_consultation, only: %i[ show edit update destroy ]

  # GET /consultations or /consultations.json
  # def index
  #   @consultations = Consultation.all
  # end

  # GET /consultations/1 or /consultations/1.json
  def show
  end

# GET /consultations/new
  def new
    @consultation = Consultation.new
    @consultation_type = ConsultationType.find_by(name: params[:consultation_type])
  end

  # GET /consultations/1/edit
  def edit
  end

  # POST /consultations or /consultations.json
  def create
    @consultation = Consultation.new(consultation_params)
    @consultation_type = ConsultationType.find(params[:consultation][:consultation_type_id])

    respond_to do |format|
      if @consultation.save

        unless @consultation_type.payment_required?
          @consultation.approved!
        end

        format.html { redirect_to root_url, notice: "Your consultation was successfully scheduled." }
        format.json { render :show, status: :created, location: @consultation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultations/1 or /consultations/1.json
  def update
    respond_to do |format|
      if @consultation.update(consultation_params)
        format.html { redirect_to root_path, notice: "Consultation was successfully updated." }
        format.json { render :show, status: :ok, location: @consultation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultations/1 or /consultations/1.json
  def destroy
    @consultation.destroy

    respond_to do |format|
      format.html { redirect_to consultations_url, notice: "Consultation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def intent
    @consultation_type = ConsultationType.find(params[:_json])
    amount = @consultation_type.price * 100

    payment_intent = Stripe::PaymentIntent.create(
      amount: amount,
      currency: 'usd',
      automatic_payment_methods: {
        enabled: true
      },
      metadata: {
        user_id: @consultation_type.user.id,
        consultation_type_id: @consultation_type.id
      }
    )

    respond_to do |format|
      format.json { render json: { clientSecret: payment_intent['client_secret'] } }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultation_params
      params.require(:consultation).permit(:consultation_type_id, :status, :name, :email, :start_at, :end_at, :notes)
    end
end
