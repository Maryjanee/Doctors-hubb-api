# frozen_string_literal: true

class Api
  class V1
    class UsersController < ApplicationController
  before_action :current_user
  before_action :set_user, only: %i[show update destroy]
  before_action :check_owner, only: %i[update destroy]

  def index
    @users = User.all
    if @users
      render json: @users
    else
      render json: 'No users found'
    end
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user.email, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    head 204
  end

  private

  def user_params
    params.permit(:username, :email, :password)
  end
end
