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
      if self.expiration_date && (self.expiration_date < Date.today)
          self.item_name = "Expired"
          self.protein = 0
          self.carbs = 5
          self.fats = 0   
      end 
    end

end
