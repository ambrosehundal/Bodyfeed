class Food < ApplicationRecord
    belongs_to :grocery

     
    def protein_cal
      self.protein
    end

    def carbohydrates
      self.carbs.to_i
    end  

    def fats_cal
      self.fats.to_i
    end
    
    def total_cal
      Food.sum("carbs*8")
    end

end
