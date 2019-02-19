namespace :expiration do
  desc "Check expiration date of foods"
  task :fetch => :environment do
    Grocery.all
  end

end
