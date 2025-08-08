class ApplicationController < ActionController::API
  include ActionController::Cookies

  helper_method :current_user
  
  def current_user
    User.find_by(id: cookies.signed[:user_id])
  end

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end
end
