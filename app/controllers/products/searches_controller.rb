class Products::SearchesController < ApplicationController 
  def index
    products = Product.search(params[:keyword])
    @products = products.where(status:0).includes(:images).order("created_at DESC").page(params[:page]).per(6)
  end
end