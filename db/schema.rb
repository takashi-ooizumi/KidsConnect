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

ActiveRecord::Schema[7.0].define(version: 2023_02_13_041622) do
  create_table "identifications", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "adress"
    t.string "phone_number"
    t.string "work"
    t.string "identification_data_path"
    t.boolean "confirm_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "avatar_name", null: false
    t.string "avatar_image_url", null: false
    t.integer "area_id", null: false
    t.string "email", null: false
    t.string "crypted_password", null: false
    t.string "salt", null: false
    t.integer "role", null: false
    t.string "reset_password_token"
    t.date "reset_password_token_expires_at"
    t.date "reset_password_emeil_sent_at"
    t.string "access_count_to_reset_password_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
