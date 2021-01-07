class PhysiciansController < ApplicationController
  def new
  	@physician = Physician.new
  end
  def create
    @physician = Physician.new(name: params[:physician][:name])
    @physician.save
    @appointment = Appointment.new(physician_id:@physician.id , patient_id:params[:physician][:patient_id])
    @appointment.save
    #@physician.create.appointment
    redirect_to @physician
  end
  def show
  	@physician = Physician.find(params[:id])
  end
end
