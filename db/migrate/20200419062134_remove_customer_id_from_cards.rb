class RemoveCustomerIdFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :customer_id, :string
  end
end
