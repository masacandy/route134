class Spot < ApplicationRecord
  has_many :route_spots
  has_many :routes, through: :route_spots
end
