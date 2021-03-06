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

ActiveRecord::Schema.define(version: 20170120170642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pain_logs", force: :cascade do |t|
    t.string   "body_part",  default: "", null: false
    t.integer  "pain_level", default: 1,  null: false
    t.integer  "patient_id"
    t.datetime "created_at"
    t.index ["patient_id"], name: "index_pain_logs_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name",                 default: "",   null: false
    t.string   "ble_id"
    t.string   "doctor"
    t.string   "bio_pic_file_name"
    t.string   "bio_pic_content_type"
    t.integer  "bio_pic_file_size"
    t.datetime "bio_pic_updated_at"
    t.string   "address"
    t.string   "phone"
    t.string   "gender"
    t.string   "email"
    t.jsonb    "problems",             default: "[]", null: false
    t.jsonb    "medications",          default: "[]", null: false
  end

  add_foreign_key "pain_logs", "patients"
end
