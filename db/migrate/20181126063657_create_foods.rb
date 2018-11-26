class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :item_name
      t.date :expiration_date
      t.integer :protein
      t.integer :carbs
      t.integer :fats
      t.integer :calories

      t.timestamps
    end
  end
end
