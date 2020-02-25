# メルカリデータベース

## users table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|nickname|string|null: false|ニックネーム|
|email|string|null: false, unique: true|メールアドレス|
|password|string|null: false|パスワード|
|family_name|string|null: false|苗字|
|last_name|string|null: false|名前|
|j_family_name|string|null: false|苗字カナ|
|j_last_name|string|null: false|名前カナ|
|birthday|date|null: false|生年月日|
|postal_code|string|null: false|郵便番号|
|prefecture|integer|null: false|都道府県|
|city|string|null: false|市区町村|
|address_number|string|null: false|番地|
|building|string||建物名|
|phone_number|string||電話番号|
## Association
- has_many :transcations
- has_many :products
- has_one :card
- has_one :shopping_address

## shopping_address table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|user_id|integer|null: false, foreign_key: true|ユーザーID|
|family_name|string|null: false|苗字|
|last_name|string|null: false|名前|
|j_family_name|string|null: false|苗字カナ|
|j_last_name|string|null: false|名前カナ|
|postal_code|string|null: false|郵便番号|
|prefecture|integer|null: false|都道府県|
|city|string|null: false|市区町村|
|address_number|string|null: false|番地|
|building|string||建物名|
|phone_number|string||電話番号|
## Association
- belongs_to :user

## cards table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|user_id|integer|null: false, foreign_key: true|ユーザーID|
|card_number|integer|null: false|カード番号|
|year|integer|null: false|有効期限（月）|
|month|integer|null: false|有効期限（日）|
|security_code|integer|null: false|セキュリティコード|
- has_one :user

## transcation table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|user_id|integer|null: false|購入者ID|
|product_id|integer|null: false|商品ID|
- belongs_to :user
- belongs_to :product

## products table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|name|string|null: false|商品名|
|detail|text|null: false|説明文|
|category_id|integer|null: false, foreign_key: true|カテゴリーID|
|brand_id|integer|null: false, foreign_key: true|ブランドID|
|condition|integer|null: false|商品の状態|
|shopping_charges|integer|null: false|配送料の負担|
|delivery_area|integer|null: false|発送元の地域|
|delivery_date|integer|null: false|発送までの日数|
|price|integer|null: false|値段|
|status|integer|null: false|0:出品中、1:取引中、2:売却済み|
|user_id|integer|null: false, foreign_key: true|出品者ID|
## Association
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_many :sub_products
- has_one :transcation

## sub_products table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|products_id|integer|null: false, foreign_key: true|商品ID|
|image|integer|null: false|画像|
## Association
- belongs_to :product

## categories table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|name|string|null: false, index: true|カテゴリー名|
## Association
- has_many :products

## brands table
|Column|Type|Options|Description|
|------|----|-------|-----------|
|name|string|index: true|ブランド名|
## Association
- has_many :products
