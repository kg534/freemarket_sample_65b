class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name,               null: false
      t.text :detail,               null: false
      t.integer :condition,         null: false
      t.integer :shopping_charges,  null: false
      t.integer :delivery_area,     null: false
      t.integer :delivery_date,     null: false
      t.integer :price,             null: false
      t.integer :status,            null: false, default: 0
      t.references :user
      t.timestamps
    end
  end
end
