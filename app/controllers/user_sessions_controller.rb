class UserSessionsController < ApplicationController

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to user_path(@user)
    else
      flash.now[:alert] = 'Login failed'
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to login_path, status: :see_other
  end
end
