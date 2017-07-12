class AddMovingDescriptionToRouteSpots < ActiveRecord::Migration[5.1]
  def change
    add_column :route_spots, :moving_description, :string, null: false, after: :sort
  end
end
