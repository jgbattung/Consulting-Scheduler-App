class ConsultationTypesController < ApplicationController
  before_action :set_consultation_type, only: %i[ show edit update destroy ]

  # GET /consultation_types or /consultation_types.json
  def index
    @consultation_types = ConsultationType.all
  end

  # GET /consultation_types/1 or /consultation_types/1.json
  def show
  end

  # GET /consultation_types/new
  def new
    @consultation_type = ConsultationType.new
  end

  # GET /consultation_types/1/edit
  def edit
  end

  # POST /consultation_types or /consultation_types.json
  def create
    @consultation_type = ConsultationType.new(consultation_type_params)

    respond_to do |format|
      if @consultation_type.save
        format.html { redirect_to consultation_type_url(@consultation_type), notice: "Consultation type was successfully created." }
        format.json { render :show, status: :created, location: @consultation_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultation_types/1 or /consultation_types/1.json
  def update
    respond_to do |format|
      if @consultation_type.update(consultation_type_params)
        format.html { redirect_to consultation_type_url(@consultation_type), notice: "Consultation type was successfully updated." }
        format.json { render :show, status: :ok, location: @consultation_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultation_types/1 or /consultation_types/1.json
  def destroy
    @consultation_type.destroy

    respond_to do |format|
      format.html { redirect_to consultation_types_url, notice: "Consultation type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation_type
      @consultation_type = ConsultationType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultation_type_params
      params.require(:consultation_type).permit(:name, :location, :description, :color, :duration, :payment_required, :price, :user_id)
    end
end
