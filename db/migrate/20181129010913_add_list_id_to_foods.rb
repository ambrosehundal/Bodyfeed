class AddListIdToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :grocery_id, :integer
  end
end
