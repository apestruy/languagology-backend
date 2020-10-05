# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_22_213232) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string "language"
    t.string "language_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quiz_translations", force: :cascade do |t|
    t.string "correct"
    t.bigint "quiz_id", null: false
    t.bigint "translation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_quiz_translations_on_quiz_id"
    t.index ["translation_id"], name: "index_quiz_translations_on_translation_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer "score"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_quizzes_on_user_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "input"
    t.string "output"
    t.bigint "user_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_translations_on_language_id"
    t.index ["user_id"], name: "index_translations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "quiz_translations", "quizzes"
  add_foreign_key "quiz_translations", "translations"
  add_foreign_key "quizzes", "users"
  add_foreign_key "translations", "languages"
  add_foreign_key "translations", "users"
end
