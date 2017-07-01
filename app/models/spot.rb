class Spot < ApplicationRecord
  has_many :route_spots
  has_many :routes, through: :routes
end
