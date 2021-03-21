# frozen_string_literal: true

class Api
  class V1
    class DoctorsController < ApplicationController
  before_action :current_user

  def index
    @doctors = Doctor.all
    if @doctors
      render json: @doctors
    else
      render json: 'No doctors available'
    end
  end

  def create
    @doctor = Doctor.create(doctor_params)

    if doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
      end
  end

  def show
    @doctor = Doctor.find(params[:id])
    if @doctor
      render json: @doctor
    else
      render json: 'This doctor doesnt exist'
    end
  end

  private

  def doctor_params
    params.permit(:name, :about, :specialization, :location, :fees, :email, :photo)
  end
end
