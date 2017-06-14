class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_name(params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to home_path
  end
end
