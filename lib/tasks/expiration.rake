namespace :expiration do
  desc "Check expiration date of foods"
  task check_date: :environment do
    "SELECT * FROM groceries WHERE grocery.food.expiration_date > NOW"
  end

end
