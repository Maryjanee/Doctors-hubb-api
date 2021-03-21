# frozen_string_literal: true

class Api
  class V1
    class TokensController < ApplicationController
  def create
    @user = User.find_by_email(params[:email])
    if @user &.authenticate(params[:password])
      render json: {
        token: encode(user_id: @user.id, username: @user.username),
        email: @user.email
      }
    else
      render json: {
        error: 'Invalid User Details'
      },
             status: :unauthorized
    end
  end
end
