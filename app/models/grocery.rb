class Grocery < ApplicationRecord
    has_many :foods, dependent: :destroy 

    has_attached_file :receipt, styles: { medium: "300x300", thumb: "100x100"}
end
