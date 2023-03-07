class ChildrenController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @children = @user.children.all
  end

  def show
    @user = User.find(params[:user_id])
    @child = @user.children.find(params[:id])
  end

  def edit
    @user = current_user
    @child = @user.children.find
  end

  def new
    @user = current_user
    @child = @user.children.new
  end

  def create
    child = current_user.children.build(set_params)
    
    if child.save
      flash[:success] = 'こども情報登録完了'
      redirect_to user_path(current_user)
    else
      flash[:danger] = 'こども情報登録失敗'
      redirect_to new_user_child_path(current_user)
    end
  end
  
  def update
    child = current_user.children.find(params[:id])
    if child.update(set_params)
      redirect_to child_path(user,child), success: 'こども情報更新完了'
    else
      flash[:danger] = 'こども情報更新に失敗しました。'
      render :edit
    end

  end

  def set_params
    params.require(:child).permit(:avatar_name, :gender, :age, :profile, :character, :favorite_character_id)
  end
end
