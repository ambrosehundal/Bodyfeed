class CreateProfilePics < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_pics do |t|
      t.string :receipt
    end
  end
end
