class RemoveDetailsFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :card_number, :integer
    remove_column :cards, :year, :integer
    remove_column :cards, :month, :integer
    remove_column :cards, :security_code, :integer
  end
end
