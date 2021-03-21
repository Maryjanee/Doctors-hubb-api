# frozen_string_literal: true

class Api
  class V1
    class AppointmentsController < ApplicationController
  before_action :current_user

  def create
    appointment = Appointment.new(appointment_params)
    appointment.user_id = @current_user.id
    appointment.username = @current_user.username

    if appointment.save
      render json: appointment, status: :created
    else
      render json: { errors: appointment.errors.full_messages }, status: 500
    end
  end

  def show
    @appointments = Appointment.where(user_id: @current_user.id)
    if @appointments
      render json: @appointments
    else
      render json: 'No appointments yet'
    end
end

  def destroy
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
    render json: 'Succesfully deleted', status: :ok
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :doctor_name, :date, :city)
  end
end
