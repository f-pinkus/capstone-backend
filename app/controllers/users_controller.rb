class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "Welcome to BiteShare!" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def me
    if cookies.signed[:user_id]
      user = User.find_by(id: cookies.signed[:user_id])
      if user
        render json: { name: user.name, email: user.email, user_id: user.id }
      else
        render json: {}, status: :unauthorized
      end
    else
      render json: {}, status: :unauthorized
    end
  end
end