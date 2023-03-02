class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @area = @user.area_id == nil ? '未設定' : Area.find(@user.area_id).address
  end

  def edit
    @user = current_user
    @areas = Area.all.map { |area| [area.address, area.id] }
  end

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
  
  def update
    user = current_user
    if user.update(set_params)
      redirect_to user_path(user), success: 'ユーザー情報更新完了'
    else
      flash.now['danger'] = 'ユーザー情報更新に失敗しました。'
      render :edit
    end

  end

  def set_params
    params.require(:user).permit(:avatar_name, :email, :password, :password_confirmation, :profile, :area_id)
  end
end
