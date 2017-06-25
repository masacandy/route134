# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170625122837) do

  create_table "route_spots", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "route_id", null: false
    t.integer "spot_id", null: false
    t.integer "sort", null: false
    t.boolean "active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_route_spots_on_active"
    t.index ["route_id", "spot_id"], name: "index_route_spots_on_route_id_and_spot_id", unique: true
  end

  create_table "routes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.boolean "weekday", null: false
    t.integer "transpotation", null: false
    t.integer "situation", null: false
    t.integer "activity_time", null: false
    t.integer "sort", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_routes_on_active"
  end

end
