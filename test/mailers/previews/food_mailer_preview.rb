# Preview all emails at http://localhost:3000/rails/mailers/food_mailer
class FoodMailerPreview < ActionMailer::Preview

    def sample_mail_preview
        FoodMailer.sample_email(Foodie.first)
    end

end
