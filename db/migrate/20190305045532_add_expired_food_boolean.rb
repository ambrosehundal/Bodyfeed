class AddExpiredFoodBoolean < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :is_it_expired, :boolean, default: 0
  end

end
