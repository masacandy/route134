class Route < ApplicationRecord
  enum visitations: { weekday: 10, weekend: 20 }
  enum transportation: { train: 10, car: 20 }
  enum situation: { dating: 10, by_yourself: 20, groups: 30 }
  enum activity_time: { all_day: 10, am: 20, pm: 30 }

  has_many :route_spots
  has_many :spots, through: :route_spots
end
