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

ActiveRecord::Schema.define(version: 20150511094246) do

  create_table "my_attributes", force: :cascade do |t|
    t.string   "name",           limit: 250,               null: false
    t.string   "section_name",   limit: 250,               null: false
    t.string   "attribute_type", limit: 50
    t.string   "default_value",  limit: 500
    t.string   "is_required",    limit: 1,   default: "N", null: false
    t.string   "data_type",      limit: 20
    t.string   "description",    limit: 300
    t.string   "display_type",   limit: 25
    t.string   "display_size",   limit: 25
    t.string   "display_label",  limit: 250
    t.integer  "display_seq",    limit: 4
    t.integer  "active_flag",    limit: 4,   default: 1,   null: false
    t.integer  "created_by",     limit: 4
    t.datetime "created_at",                               null: false
    t.integer  "updated_by",     limit: 4
    t.datetime "updated_at",                               null: false
  end

  create_table "my_model_my_attributes", force: :cascade do |t|
    t.integer  "my_model_id",     limit: 4
    t.integer  "my_attribute_id", limit: 4
    t.string   "value",           limit: 500
    t.integer  "value_int",       limit: 4
    t.datetime "value_date"
    t.float    "value_float",     limit: 24
    t.integer  "created_by",      limit: 4
    t.datetime "created_at",                  null: false
    t.integer  "updated_by",      limit: 4
    t.datetime "updated_at",                  null: false
  end

  create_table "my_models", force: :cascade do |t|
    t.string   "model_number", limit: 255,             null: false
    t.string   "description",  limit: 255,             null: false
    t.integer  "active_flag",  limit: 4,   default: 1, null: false
    t.integer  "created_by",   limit: 4
    t.datetime "created_at",                           null: false
    t.integer  "updated_by",   limit: 4
    t.datetime "updated_at",                           null: false
  end

  add_index "my_models", ["model_number"], name: "index_my_models_on_model_number", using: :btree

end
