class CreateRouteSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :route_spots do |t|
      t.integer :route_id, null: false
      t.integer :spot_id, null: false
      t.integer :sort, null: false
      t.boolean :active, null: false

      t.timestamps
    end

    add_index :route_spots, [:route_id, :spot_id], unique: true
    add_index :route_spots, :active
  end
end
