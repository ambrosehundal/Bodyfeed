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
      Food.sum("fats*carbs")
    end

end
