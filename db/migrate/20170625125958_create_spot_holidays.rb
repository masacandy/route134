class CreateSpotHolidays < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_holidays do |t|
      t.integer :spot_id, limit:4, null: false
      t.integer :day, limit: 4, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
