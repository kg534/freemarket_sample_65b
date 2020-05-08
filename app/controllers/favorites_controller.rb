class FavoritesController < ApplicationController

  def create
    Favorite.create(favorite_params)
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.json 
    end
  end

  def destroy
    favorite = Favorite.find_by(product_id: params[:product_id], user_id: current_user.id)
    favorite.destroy
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.json 
    end
  end

  private
  def favorite_params
    params.permit(:product_id, :user_id).merge(user_id: current_user.id)
  end
end
