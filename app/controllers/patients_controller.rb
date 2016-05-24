class PatientsController < ApplicationController
  before_action :authenticate_user!
  respond_to :json, :html
  
  before_action :find_patient, only: [:show, :destroy, :edit, :update]

  def index
    @patients = current_user.patients
  end

  def new
    @patient = Patient.new
  end

  def show
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_url
  end

  def edit
  end

  def update
    @patient.update_attributes(patient_params)
    redirect_to @patient
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :phone, :avatar_url)
  end

  def find_patient
    @patient = Patient.find(params[:id])
  end
end
