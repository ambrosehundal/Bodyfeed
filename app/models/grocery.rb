class Grocery < ApplicationRecord
    has_many :foods, dependent: :destroy
end
