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

ActiveRecord::Schema[7.0].define(version: 2022_12_08_103924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "minutes_to_read"
    t.text "featured_image"
    t.integer "likes", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dev_id", null: false
    t.boolean "is_free", default: false, null: false
    t.index ["dev_id"], name: "index_articles_on_dev_id"
  end

  create_table "devs", force: :cascade do |t|
    t.text "email"
    t.string "username"
    t.string "fname"
    t.string "lname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "bio"
    t.text "image_url"
    t.string "linkedin"
    t.string "github"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dev_id", null: false
    t.index ["dev_id"], name: "index_profiles_on_dev_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "devs"
  add_foreign_key "profiles", "devs"
end
