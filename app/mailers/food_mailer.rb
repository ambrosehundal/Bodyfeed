class FoodMailer < ApplicationMailer
   default from: "railshundal@gmail.com"


   def sample_email(foodie)
    @foodie = foodie
    mail(to: @foodie.email, subject: 'Foods expiration dates')
   end
end
