class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :postal_code,        null: false
      t.integer :prefecture,        null: false
      t.string :city,               null: false
      t.string :address_number,      null: false
      t.string :building
      t.references :user
      t.timestamps
    end
  end
end
