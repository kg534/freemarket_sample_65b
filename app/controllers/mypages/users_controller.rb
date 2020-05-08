class Mypages::UsersController < ApplicationController
  def show
  end

  def logout
  end

  def favorite_list
    @user = current_user
    @favorites = current_user.favorites.where(user_id:@user.id).all.order("created_at DESC").page(params[:page]).per(3)
  end
end
