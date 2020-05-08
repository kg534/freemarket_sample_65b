class AddIndexFavoritesUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :favorites, :user_id
    add_index :favorites, :product_id
    add_index :favorites, [:user_id, :product_id], unique: true
  end
end
