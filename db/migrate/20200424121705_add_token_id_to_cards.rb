class AddTokenIdToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :token_id, :string
  end
end
