class Product < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_associated :images
  validates :images, presence: { message: 'がありません' }

  belongs_to :category
  has_many :users, through: :transactions

  belongs_to :brand, optional: true
  accepts_nested_attributes_for :brand, allow_destroy: true
  
  belongs_to :user
  
  validates :name, :detail, :price, :user_id, presence: { message: '入力してください' }
  validates :condition, :shopping_charges, :delivery_area, :delivery_date, :status, :category_id, presence: { message: '選択してください' }

  has_many :users, through: :favorites, dependent: :destroy
  has_many :favorites

  def self.search(search)
    if search
      Product.where("name LIKE ?", "%#{search}%")
    else
      Product.all
    end
  end

  enum delivery_area: {
    北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
    茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
    新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
    岐阜県:21,静岡県:22,愛知県:23,三重県:24,
    滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
    鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
    徳島県:36,香川県:37,愛媛県:38,高知県:39,
    福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47
  }, _prefix: true

  enum condition: {
   "新品、未使用": 1, "未使用に近い": 2, "目立った傷や汚れなし": 3, "やや傷や汚れなし": 4, "傷や汚れなし": 5, "全体的に状態が悪い": 6
  }, _prefix: true

  enum shopping_charges: {
    "送料込み(出品者負担)": 1, "着払い(購入者負担)": 2
  }, _prefix: true

  enum delivery_date: {
    "1~2日で配送": 1, "2~3日で配送": 2, "4~7日で配送": 3
  }, _prefix: true

  enum status: {
    "出品中": 0, "取引中": 1, "売却済み": 2
  }, _prefix: true
end
