class Receipt < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_one :grocery
    
end
