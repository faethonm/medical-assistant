class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = current_user.appointments.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    if @appointment.save
      redirect_to @appointment
    else
      render 'new'
    end
  end

  def update
    @appointment.update_attributes(appointment_params)
    redirect to @appointment
  end

  def destroy
    @appointment.destroy
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_date, :end_date, :patient_id)
  end
end
