# frozen_string_literal: true

# authenticable
module Authenticable
  include JsonWebToken

  def current_user
    return @current_user if @current_user

    header = request.headers['Authorization']
    return nil if header.nil?

    token = header.split[1]
    decoded = decode(token)
    puts decoded
    @current_user = User.find_by!(id: decoded[:user_id])
    puts @current_user
  end

  # def logged_in
  #     if !current_user.nil?
  #         render json: "You are not logged in, please do so!"
  #     end

  # end

  def set_user
    @user = User.find(params[:id])
  end

  def check_owner
    head :forbidden unless @user.id == current_user&.id
  end
end
