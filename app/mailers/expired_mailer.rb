class ExpiredMailer < ApplicationMailer
    default from: 'railshundal@gmail.com'


    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: 'I will send the list of expired foods soon')
    end
end
