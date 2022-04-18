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

ActiveRecord::Schema[7.0].define(version: 2022_04_18_003157) do
  create_table "data", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "directions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe1s", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "protein1"
    t.string "protein2"
    t.string "protein3"
    t.string "protein4"
    t.string "protein5"
    t.string "veg1"
    t.string "veg2"
    t.string "veg3"
    t.string "veg4"
    t.string "veg5"
    t.string "starch1"
    t.string "starch2"
    t.string "starch3"
    t.string "starch4"
    t.string "starch5"
    t.string "oils1"
    t.string "oils2"
    t.string "oils3"
    t.string "oils4"
    t.string "oils5"
    t.string "aromatics1"
    t.string "aromatics2"
    t.string "aromatics3"
    t.string "aromatics4"
    t.string "aromatics5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
