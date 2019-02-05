class FoodMailer < ApplicationMailer
   default from: "railshundal@gmail.com"


   def test_email(foodie)
        @foodie = foodie
        mail(to: @foodie.email, subject: 'Foods expiration dates')
   end
end
