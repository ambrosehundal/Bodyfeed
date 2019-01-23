class AddExpirationDateToFoods < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :health_scale, :integer
  end
end
