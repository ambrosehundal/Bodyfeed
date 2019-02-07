class ExpiredFoodMailer < ApplicationMailer
    default from: 'railshundal@gmail.com'

    layout "mailer"


    def mailer(fooduser, food)
        @food = food
        @fooduser = fooduser
        mail(to: @fooduser.email, subject: 'I will send the list of expired foods soon',  body: 'something')
    end
end
