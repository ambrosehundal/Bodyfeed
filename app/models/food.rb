class Food < ApplicationRecord
    belongs_to :grocery

     
    def protein_cal
      self.protein
    end

    def carb_cal
      self.carbs
    end

    def fats_cal
      self.fats
    end
    
    def total_cal
       protein_cal + carb_cal + fats_cal
    end

end
