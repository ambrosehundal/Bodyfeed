class Food < ApplicationRecord
    belongs_to :grocery

     
    def protein_cal
      self.protein.to_i
    end

    def carbohydrates
      self.carbs.to_i
    end  

    def fats_cal
      self.fats.to_i
    end
    
    def total_cal
      fats_cal * 9 + carbohydrates * 4 + protein_cal * 4
    end

    def expired
      if ((self.expiration_date - Date.today).to_i < 2.days)
        self.item_name = "Expired food"
        # DO you like
        #flash [:success]  "Expired food"
      end
    end

end
