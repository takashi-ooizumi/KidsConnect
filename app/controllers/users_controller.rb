class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
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
      flash[:success] = '登録成功'
      redirect_to user_path(@user)
    else
      flash[:danger] = '登録失敗'
      redirect_back_or_to new_user_path
    end
  end
  
  def update
    user = current_user
    if user.update(set_params)
      flash[:success] = 'ユーザー情報更新完了'
      redirect_to user_path(user)
    else
      flash['danger'] = 'ユーザー情報更新に失敗しました。'
      redirect_to new_user_path
    end

  end

  def set_params
    params.require(:user).permit(:avatar_name, :email, :password, :password_confirmation, :profile, :area_id)
  end
end
