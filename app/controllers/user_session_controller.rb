class UserSessionController < ApplicationController

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(:user, notice: 'Login Successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:user, notice: 'Logged out!')
  end
end
