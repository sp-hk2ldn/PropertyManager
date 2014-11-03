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

ActiveRecord::Schema.define(version: 20141103120739) do

  create_table "contractors", force: true do |t|
    t.string   "company_name"
    t.string   "industry_type"
    t.string   "email"
    t.string   "tel"
    t.integer  "jobs_completed"
    t.integer  "jobs_feedback_good"
    t.integer  "jobs_feedback_bad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlords", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "tel"
    t.string   "address"
    t.date     "date_registered"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.integer  "landlord_id"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "works"
    t.string   "work_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "tel"
    t.date     "lease_commenced"
    t.date     "lease_end"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "works", force: true do |t|
    t.string   "type"
    t.date     "raised_date"
    t.date     "due_date"
    t.integer  "property_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end