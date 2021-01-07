class PatientsController < ApplicationController
  def new
  	@patient = Patient.new
  end
  def create
  	@patient = Patient.new(name: params[:patient][:name])
  	@patient.save
    @appointment = Appointment.new(physician_id:params[:patient][:physician_id] , patient_id:@patient.id)
    @appointment.save
    #@patient.appointment.create
  	redirect_to @patient
  end
  def show
  	@patient = Patient.find(params[:id])
  end
end
