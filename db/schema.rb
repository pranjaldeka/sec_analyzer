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

ActiveRecord::Schema.define(version: 20160416202123) do

  create_table "anti_rules", force: :cascade do |t|
    t.integer  "r1_id"
    t.integer  "r2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.integer  "c_id"
    t.string   "c_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_informations", force: :cascade do |t|
    t.integer  "file_id"
    t.integer  "c_id"
    t.integer  "year"
    t.string   "quarter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filter_rules", force: :cascade do |t|
    t.integer  "f_id"
    t.string   "r_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filters", force: :cascade do |t|
    t.integer  "f_id"
    t.string   "f_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rule_data", force: :cascade do |t|
    t.integer  "file_id"
    t.integer  "r_id"
    t.integer  "offset"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.integer  "r_id"
    t.string   "r_name"
    t.integer  "is_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
