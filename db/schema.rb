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

ActiveRecord::Schema.define(version: 2022_06_12_110549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flashcards", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "reportcard_id"
    t.index ["reportcard_id"], name: "index_flashcards_on_reportcard_id"
  end

  create_table "freports", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flashcards_id", null: false
    t.boolean "is_known"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flashcards_id"], name: "index_freports_on_flashcards_id"
    t.index ["user_id"], name: "index_freports_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "category"
    t.string "sub_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mreports", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "material_id", null: false
    t.integer "material_confidece"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_mreports_on_material_id"
    t.index ["user_id"], name: "index_mreports_on_user_id"
  end

  create_table "reportcards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "material_id", null: false
    t.integer "material_confidece"
    t.boolean "is_known"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["material_id"], name: "index_reportcards_on_material_id"
    t.index ["user_id"], name: "index_reportcards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "flashcards", "reportcards"
  add_foreign_key "freports", "flashcards", column: "flashcards_id"
  add_foreign_key "freports", "users"
  add_foreign_key "mreports", "materials"
  add_foreign_key "mreports", "users"
  add_foreign_key "reportcards", "materials"
  add_foreign_key "reportcards", "users"
end
