class RemoveCaloriesFromFoods < ActiveRecord::Migration[5.0]
  def change
    remove_column :foods, :calories, :integer
  end
end
