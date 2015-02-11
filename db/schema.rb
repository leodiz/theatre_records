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

ActiveRecord::Schema.define(version: 20150210190359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.float    "experence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_awards", force: true do |t|
    t.integer "actor_id"
    t.integer "award_id"
  end

  create_table "awards", force: true do |t|
    t.string   "title"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: true do |t|
    t.decimal  "sum"
    t.date     "date"
    t.integer  "role_id"
    t.integer  "performance_id"
    t.integer  "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performances", force: true do |t|
    t.datetime "datetime"
    t.decimal  "budget"
    t.integer  "play_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "performances", ["play_id"], name: "index_performances_on_play_id", using: :btree

  create_table "plays", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "author"
    t.integer  "year_of_foundation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.integer  "play_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["play_id"], name: "index_roles_on_play_id", using: :btree

end
