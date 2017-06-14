class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path
    else
      redirect_to users_path
    end
  end
  def home
    @user = User.find_by_id(current_user)
  end
end
