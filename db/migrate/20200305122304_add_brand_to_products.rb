class AddBrandToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :brand, foregin_key: true
  end
end
