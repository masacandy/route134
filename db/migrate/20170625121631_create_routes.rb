class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :opens, limit:4, null: false
      t.integer :transpotation, limit: 4, null: false
      t.integer :situation, limit: 4, null: false
      t.integer :activity_time, limit: 4, null: false
      t.integer :sort, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end

    add_index :routes, :active
  end
end
