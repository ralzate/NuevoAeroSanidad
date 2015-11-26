class ClinicHistoriesController < ApplicationController
  # before_action :set_clinic_history, only: [:show, :edit, :update, :destroy]
  before_action :set_clinic_history

  # GET /pets
  # GET /pets.json
  def index
    # Normally you'd have more complex requirements about
    # when not to show rows, but we don't show any records that don't have a name

    @clinic_histories = @patient.clinic_histories.search(params[:search]).page(params[:page]).per_page(2)

  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /countries/1/edit
  def edit

  end


  # GET /pets/new
  def new
    @clinic_history = ClinicHistory.new
    @clinic_history.build_arl  
    @clinic_history.build_eps  
  end

  # POST /pets
  # POST /pets.json


  def create
    @clinic_history = ClinicHistory.new(clinic_history_params)
    @clinic_history.patient_id = @patient.id

    respond_to do |format|
      if @clinic_history.save
        format.html { redirect_to patient_clinic_history_steps_path(@patient, @clinic_history,
         ClinicHistory.form_steps.second), notice: 'Historia Clinica was successfully created.' }

        format.json { render :show, status: :created, location: @clinic_history }
      else
        format.html { render :new }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @clinic_history.update(clinic_history_params)
        format.html { redirect_to patient_clinic_history_steps_path(@patient, @clinic_history,
         ClinicHistory.form_steps.second), notice: 'clinic_history was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinic_history }
      else
        format.html { render :edit }
        format.json { render json: @clinic_history.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @clinic_history.destroy
    respond_to do |format|
      format.html { redirect_to clinic_histories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic_history
      @patient = Patient.find(params[:patient_id])
      @clinic_history = ClinicHistory.find(params[:id]) if params[:id]
    end

   
    # Never trust parameters from the scary internet, only allow the white list through.
    # Never trust parameters from the scary internet, only allow the white list through.
    def clinic_history_params
        params.require(:clinic_history).permit!
    end
end
