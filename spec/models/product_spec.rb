require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @category = FactoryBot.create(:category)
    @brand = FactoryBot.create(:brand)
    @user = FactoryBot.create(:user)
  end

  it "商品情報が全て正しく入力されている" do
    category = @category
    brand = @brand
    user_a = @user
    image = FactoryBot.create(:image)
    product = FactoryBot.create(:product, image: image, user: user_a, category: category, brand: brand)
    expect(product).to be_valid
  end

  it "商品名がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(name: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:name]).to include("入力してください")
  end

  it "商品説明がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(detail: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:detail]).to include("入力してください")
  end

  it "商品の状態がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(condition: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:condition]).to include("選択してください")
  end

  it "配送料の負担がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(shopping_charges: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:shopping_charges]).to include("選択してください")
  end

  it "発送元の地域がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(delivery_area: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:delivery_area]).to include("選択してください")
  end

  it "発送までの日数がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(delivery_date: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:delivery_date]).to include("選択してください")
  end

  it "値段がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(price: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:price]).to include("入力してください")
  end

  it "取引状態がなければ無効" do
    category = @category
    brand = @brand
    user_a = @user
    product = Product.new(status: nil, user: user_a, category: category, brand: brand)
    product.valid?
    expect(product.errors[:status]).to include("選択してください")
  end

  context 'GET #index' do
    it 'keywordが送られてきた場合' do
    product = Product.where("name LIKE ?", "%#{params[:keyword]}%")
    expect(assigns(:product)).to eq(product) 
    end
  end
end