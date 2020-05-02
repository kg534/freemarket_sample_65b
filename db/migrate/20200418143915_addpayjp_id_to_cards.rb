class AddpayjpIdToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :payjp_id, :string, :null => false
  end
end
