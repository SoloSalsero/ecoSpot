class Category < ApplicationRecord
  mount_uploader :picture, PictureUploader
  
  has_many :spots
  has_many :rewards
end
