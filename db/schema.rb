# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150727135741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", using: :btree

  create_table "photos", force: true do |t|
    t.text     "description"
    t.integer  "project_id"
    t.boolean  "feature_img", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["project_id"], name: "index_photos_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "overview"
    t.text     "details"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["page_id"], name: "index_projects_on_page_id", using: :btree

end
