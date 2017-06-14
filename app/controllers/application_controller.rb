class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_params

  def current_user
    session[:user_id]
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :name)
  end
end
