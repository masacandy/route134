class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.boolean :weekday, null: false
      t.integer :transpotation, null: false
      t.integer :situation, null: false
      t.integer :activity_time, null: false
      t.integer :sort, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :routes, :active
  end
end
