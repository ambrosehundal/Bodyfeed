class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
