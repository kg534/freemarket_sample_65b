require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @category = FactoryBot.create(:category)
    @brand = FactoryBot.create(:brand)
    @user = FactoryBot.create(:user)
  end

  # it "商品情報が全て正しく入力されている" do
  #   category = @category
  #   brand = @brand
  #   user_a = @user
  #   product = FactoryBot.create(:product, user: user_a, category: category, brand: brand).attributes_for(:image)
  #   expect(product).to be_valid
  # end

  it "商品名がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(name: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:name]).to include("can't be blank")
  end

  it "商品説明がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(detail: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:detail]).to include("can't be blank")
  end

  it "商品の状態がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(condition: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:condition]).to include("can't be blank")
  end

  it "配送料の負担がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(shopping_charges: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:shopping_charges]).to include("can't be blank")
  end

  it "発送元の地域がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(delivery_area: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:delivery_area]).to include("can't be blank")
  end

  it "発送までの日数がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(delivery_date: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:delivery_date]).to include("can't be blank")
  end

  it "値段がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(price: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:price]).to include("can't be blank")
  end

  it "取引状態がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(status: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:status]).to include("can't be blank")
  end
end