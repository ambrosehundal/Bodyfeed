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
      if Date.parse(self.expiration_date) < Date.today
        self.expiration_date = Date.now
      else
        self.expiration_date
      end
    end

end
