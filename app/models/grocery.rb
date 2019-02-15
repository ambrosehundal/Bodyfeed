class Grocery < ApplicationRecord
    has_many :foods, dependent: :destroy 
    has_one_attached :receipt, dependent: :destroy

    #has_attached_file :receipt, styles: { medium: "300x300", thumb: "100x100"}




    def expired_date
        if self.purchase_date > Date.today
            self.title = "Expired"
        else
            self.title = self.title

        end

    end
end
