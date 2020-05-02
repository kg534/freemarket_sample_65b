FactoryBot.define do
  factory :product do
    name { 'テスト商品' }
    detail { 'テスト商品説明' }
    condition { 1 }
    shopping_charges { 1 }
    delivery_area { 1 }
    delivery_date { 1 }
    price { 10 }
    status { 0 }
    category
    brand
    user
    created_at {Faker::Time.between(from: DateTime.now - 2, to: DateTime.now)}
    images {[build(:image)]}
  end
end