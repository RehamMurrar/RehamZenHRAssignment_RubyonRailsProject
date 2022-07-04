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

ActiveRecord::Schema[7.0].define(version: 2022_07_03_230922) do
  create_table "job_application_states", force: :cascade do |t|
    t.integer "state_id", default: 2
    t.string "state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.integer "job_application_id", :default => 12
    t.integer "job_post_id", null: false
    t.integer "user_id", null: false
    t.datetime "applied_on"
    t.integer "job_application_state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_application_state_id"], name: "index_job_applications_on_job_application_state_id"
    t.index ["job_post_id"], name: "index_job_applications_on_job_post_id"
    t.index ["user_id"], name: "index_job_applications_on_user_id"
  end

  create_table "job_posts", force: :cascade do |t|
    t.integer "job_post_id"
    t.string "job_post_title"
    t.text "job_post_describtion"
    t.integer "user_id", null: false
    t.datetime "posted_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_job_posts_on_user_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.integer "user_type_id"
    t.string "user_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.integer "user_type_id", null: false
    t.string "user_email"
    t.string "user_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "job_applications", "job_application_states", primary_key: "id"
  add_foreign_key "job_applications", "job_post_ids", column: "job_post_id"
  add_foreign_key "job_applications", "users", primary_key: "id"
  add_foreign_key "job_posts", "users"
  add_foreign_key "users", "user_types"
end
