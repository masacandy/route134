class CreateSpotImages < ActiveRecord::Migration[5.1]
  def change
    create_table :spot_images do |t|
      t.integer :spot_id, null: false
      t.string :image, null: false
      t.integer :sort, null: false
      t.boolean :active, null: false, default: true
      t.timestamps
    end

    add_index :spot_images, :spot_id
  end
end
