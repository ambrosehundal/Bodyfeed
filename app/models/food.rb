class Food < ApplicationRecord
    belongs_to :grocery

     
    def protein_cal
      self.protein.sum
    end

    def carb_cal
      self.carbs
    end

    def fats_cal
      self.fats
    end
    
    def total_cal
      Food.pluck(:fats, :protein, :carbs).sum
    end

end
