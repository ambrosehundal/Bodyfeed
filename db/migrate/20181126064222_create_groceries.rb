class CreateGroceries < ActiveRecord::Migration[5.0]
  def change
    create_table :groceries do |t|
      t.string :title
      t.date :purchase_date
      t.integer :cost
      t.string :notes

      t.timestamps
    end
  end
end
