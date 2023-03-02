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

ActiveRecord::Schema[7.0].define(version: 2023_03_02_150214) do
  create_table "areas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "address", null: false
    t.string "address_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "block_members", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "target_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_user_id"], name: "index_block_members_on_target_user_id"
    t.index ["user_id"], name: "index_block_members_on_user_id"
  end

  create_table "children", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.string "avatar_name"
    t.string "avatar_image_url"
    t.integer "gender"
    t.integer "age"
    t.integer "character"
    t.string "favorite_character_text"
    t.bigint "favorite_character_id"
    t.string "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favorite_character_id"], name: "index_children_on_favorite_character_id"
    t.index ["user_id"], name: "index_children_on_user_id"
  end

  create_table "favorite_characters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "infomation"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_members", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "target_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_user_id"], name: "index_group_members_on_target_user_id"
    t.index ["user_id"], name: "index_group_members_on_user_id"
  end

  create_table "identifications", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "address"
    t.string "phone_number"
    t.string "work"
    t.string "identification_data_path"
    t.boolean "confirm_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identifications_on_user_id"
  end

  create_table "messages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "target_user_id"
    t.string "message", null: false
    t.date "readed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_user_id"], name: "index_messages_on_target_user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "playgrounds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "area_id"
    t.string "image_url"
    t.date "open_time"
    t.date "close_time"
    t.bigint "playing_type_id"
    t.string "infomation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_playgrounds_on_area_id"
    t.index ["playing_type_id"], name: "index_playgrounds_on_playing_type_id"
  end

  create_table "playing_types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "avatar_name"
    t.string "avatar_image_url"
    t.bigint "area_id"
    t.string "email"
    t.string "crypted_password"
    t.string "salt"
    t.integer "role"
    t.string "reset_password_token"
    t.date "reset_password_token_expires_at"
    t.date "reset_password_emeil_sent_at"
    t.string "access_count_to_reset_password_page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile"
    t.index ["area_id"], name: "index_users_on_area_id"
  end

  add_foreign_key "block_members", "users"
  add_foreign_key "block_members", "users", column: "target_user_id"
  add_foreign_key "children", "favorite_characters"
  add_foreign_key "children", "users"
  add_foreign_key "group_members", "users"
  add_foreign_key "group_members", "users", column: "target_user_id"
  add_foreign_key "identifications", "users"
  add_foreign_key "messages", "users"
  add_foreign_key "messages", "users", column: "target_user_id"
  add_foreign_key "playgrounds", "areas"
  add_foreign_key "playgrounds", "playing_types"
  add_foreign_key "users", "areas"
end
