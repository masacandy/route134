class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.decimal :longtitude, precision: 9, scale: 6, null: false
      t.decimal :latitude, precision: 9, scale: 6, null: false
      t.string :phone_number
      t.time :opens, null: false
      t.time :close, null: false
      t.string :api_url, null: false
      t.string :address, null: false
      t.string :zipcode, null: false
      t.string :official_url
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
