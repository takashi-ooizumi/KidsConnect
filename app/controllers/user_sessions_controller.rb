class UserSessionsController < ApplicationController

  def create
    @user = login(params[:email], params[:password])

    if @user
      flash[:success] = 'login successful'
      redirect_back_or_to user_path(@user)
    else
      flash[:danger] = 'login failed'
      redirect_to root_path
    end
  end

  def destroy
    logout
    flash[:notice] = 'logout successful!'
    redirect_to root_path, status: :see_other
  end
end
