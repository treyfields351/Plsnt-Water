# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_08_030324) do
 
  enable_extension "plpgsql"

  create_table "logs", force: :cascade do |t|
    t.date "log_date"
    t.string "cared_for"
    t.string "condition"
    t.string "description"
    t.bigint "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_logs_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "size"
    t.string "light"
    t.string "water"
    t.string "humidity"
    t.string "image"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "logs", "plants"
  add_foreign_key "plants", "users"
end
