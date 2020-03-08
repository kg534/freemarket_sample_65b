class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def new
    @product = Product.new
    @product.images.new
    @product.build_brand
  end

  def create
    @category = Category.find_by(id: category_params[:category_id])
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path
    else  
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @category = Category.find_by(id: category_params[:category_id])
    
    if @product.update(product_params) 
      redirect_to root_path
    else 
      render :edit
    end
  end

  def destroy
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def category_params
    params.require(:product).permit(:category_id)
  end

  def product_params
    params.require(:product).permit(:name, :detail, :condition, :shopping_charges, :delivery_area, :delivery_date, :price, :status, images_attributes: [:src, :_destroy, :id], brand_attributes: [:id, :name]).merge(user_id: current_user.id, category_id: @category.id)
  end
end
