class UsersController < ApplicationController

  def index; end

  def show; end

  def edit; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(set_params)
    
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def set_params
    params.require(:user).permit(:avatar_name, :email, :password, :password_confirmation)
  end
end
