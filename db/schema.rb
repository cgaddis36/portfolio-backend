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

ActiveRecord::Schema[7.0].define(version: 2022_11_17_152636) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "background"
    t.string "github"
    t.string "title"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.bigint "developer_id", null: false
    t.string "name"
    t.string "image"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_hobbies_on_developer_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "degree"
    t.string "major"
    t.string "graduation"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "developer_id", null: false
    t.index ["developer_id"], name: "index_institutions_on_developer_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "industry"
    t.string "company"
    t.string "summary"
    t.string "start_date"
    t.string "end_date"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "developer_id", null: false
    t.index ["developer_id"], name: "index_jobs_on_developer_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "github"
    t.string "description"
    t.string "classification"
    t.string "frameworks", default: [], array: true
    t.string "hosts", default: [], array: true
    t.string "apis", default: [], array: true
    t.string "features", default: [], array: true
    t.string "languages", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_id"
    t.bigint "developer_id", null: false
    t.index ["developer_id"], name: "index_projects_on_developer_id"
    t.index ["job_id"], name: "index_projects_on_job_id"
  end

  add_foreign_key "hobbies", "developers"
  add_foreign_key "institutions", "developers"
  add_foreign_key "jobs", "developers"
  add_foreign_key "projects", "developers"
  add_foreign_key "projects", "jobs"
end
