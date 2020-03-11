class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]
  before_action :set_brand, only: [:create, :update]

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

    if @brand[:name] == "" 
      @product = Product.new(product_no_brand_params)
    elsif @brand_value != nil
      @product = Product.new(product_params_brand_id)
    else
      @product = Product.new(product_params)
    end
    
    if @product.save
      redirect_to root_path
    else
      image = image_params[:images_attributes]
      if image == nil 
        @product.images.new
      end
      if @brand[:name] == "" 
        @product.build_brand
      end
      render :new
    end
  end

  def show
  end

  def edit
    if @product[:brand_id] == nil
      @product.build_brand
    end
  end

  def update
    @category = Category.find_by(id: category_params[:category_id])

    if @brand[:name] == "" && @brand_value == nil
      @product.update(product_no_brand_params) 
      redirect_to root_path
    elsif @brand_value != nil
      @product.update(product_params_brand_id)
      redirect_to root_path
    elsif @product.update(product_params) 
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def set_brand
    @brand = brand_params[:brand_attributes]
    if @brand != nil
      @brand_value = Brand.find_by(name: @brand[:name])
    else
      @brand_value = nil
    end
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def category_params
    params.require(:product).permit(:category_id)
  end

  def brand_params
    params.require(:product).permit(brand_attributes: [:id, :name])
  end

  def image_params
    params.require(:product).permit(images_attributes: [:src, :_destroy, :id])
  end

  def product_no_brand_params
    params.require(:product).permit(:name, :detail, :condition, :shopping_charges, :delivery_area, :delivery_date, :price, :status, images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id, category_id: @category.id, brand_id: nil)
  end

  def product_params
    params.require(:product).permit(:name, :detail, :condition, :shopping_charges, :delivery_area, :delivery_date, :price, :status, images_attributes: [:src, :_destroy, :id], brand_attributes: [:id, :name]).merge(user_id: current_user.id, category_id: @category.id)
  end

  def product_params_brand_id
    params.require(:product).permit(:name, :detail, :condition, :shopping_charges, :delivery_area, :delivery_date, :price, :status, images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id, category_id: @category.id, brand_id: @brand_value[:id])
  end
end
