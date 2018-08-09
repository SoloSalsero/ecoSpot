class Spot < ApplicationRecord
  belongs_to :city
  belongs_to :district
  belongs_to :category
end
