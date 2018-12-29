class Food < ApplicationRecord
    belongs_to :grocery

     
    def protein_cal
      self.protein
    end

    def carbohydrates
      self.carbs
    end  

    def fats_cal
      self.fats
    end
    
    def total_cal
      Food.sum("carbs*8")
    end

end
