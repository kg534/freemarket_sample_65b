class Mypages::UsersController < ApplicationController
  def show
  end

  def logout
  end

  def favorite_list
    @favorites = current_user.favorites.where(user_id: current_user.id).all.order("created_at DESC").page(params[:page]).per(3)
  end
end
