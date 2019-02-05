class CreateFoodusers < ActiveRecord::Migration[5.2]
  def change
    create_table :foodusers do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
