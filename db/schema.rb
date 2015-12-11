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

ActiveRecord::Schema.define(version: 20151211002522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "statistics", force: :cascade do |t|
    t.string   "case"
    t.string   "location"
    t.date     "date"
    t.integer  "year"
    t.string   "summary"
    t.integer  "fatalities"
    t.integer  "injured"
    t.integer  "total_victims"
    t.string   "venue"
    t.string   "warning_signs"
    t.string   "mental_health"
    t.string   "weapons_obtained_legally"
    t.string   "where_obtained"
    t.string   "type_of_weapons"
    t.string   "weapon_details"
    t.string   "race"
    t.string   "gender"
    t.string   "sources"
    t.string   "mental_health_sources"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "shooting_type"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
