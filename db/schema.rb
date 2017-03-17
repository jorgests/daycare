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

ActiveRecord::Schema.define(version: 20161206154603) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string  "name"
    t.integer "city_id_id"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
  end

  create_table "religions", force: :cascade do |t|
    t.string "name"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "period"
    t.datetime "date_birth"
    t.integer  "religion_id"
    t.string   "responsible_one_name"
    t.datetime "responsible_one_birth_date"
    t.string   "responsible_one_email"
    t.string   "responsible_one_rg"
    t.string   "responsible_one_cpf"
    t.integer  "responsible_one_number_children"
    t.string   "responsible_one_workplace"
    t.integer  "responsible_one_profession_id"
    t.string   "responsible_one_phone"
    t.string   "responsible_one_cell_phone"
    t.string   "responsible_one_contact"
    t.string   "responsible_two_name"
    t.datetime "responsible_two_birth_date"
    t.string   "responsible_two_email"
    t.string   "responsible_two_rg"
    t.string   "responsible_two_cpf"
    t.integer  "responsible_two_number_children"
    t.string   "responsible_two_workplace"
    t.integer  "profession_id"
    t.string   "responsible_two_phone"
    t.string   "responsible_two_cell_phone"
    t.string   "responsible_two_contact"
    t.string   "addresses"
    t.integer  "number"
    t.integer  "neighborhood_id"
    t.integer  "city_id"
    t.string   "zip_code"
    t.string   "phones"
    t.string   "people_allowed_search_child"
    t.string   "fever_case"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["profession_id"], name: "index_students_on_profession_id", using: :btree

end
