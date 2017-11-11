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

ActiveRecord::Schema.define(version: 20171111081950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donations", force: :cascade do |t|
    t.bigint "donation_amount"
    t.bigint "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_tasks", force: :cascade do |t|
    t.string "task_title"
    t.string "task_description"
    t.bigint "project_id"
    t.bigint "user_id"
    t.boolean "approved_by_admin"
    t.boolean "approved_by_pto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_tasks_on_project_id"
    t.index ["user_id"], name: "index_project_tasks_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_title"
    t.string "project_description"
    t.integer "project_status"
    t.string "pictures"
    t.boolean "approved_by_admin"
    t.boolean "approved_by_pto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "pto_role"
    t.boolean "admin_role"
    t.string "pictures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "project_tasks", "projects"
  add_foreign_key "project_tasks", "users"
end