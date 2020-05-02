class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foregin_key: true, null: false
      t.references :product, foregin_key: true, null: false
      t.timestamps
    end
  end
end
