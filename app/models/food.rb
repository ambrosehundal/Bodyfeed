class Food < ApplicationRecord
    belongs_to :grocery

    def total_calories
        calories = protein + carbs + fats
    end
end
