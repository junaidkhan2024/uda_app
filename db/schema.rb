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

ActiveRecord::Schema[8.1].define(version: 2026_04_01_171946) do
  create_table "registrations", force: :cascade do |t|
    t.string "area", null: false
    t.datetime "created_at", null: false
    t.string "document_file_name"
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "hospital_or_clinic_name"
    t.string "last_name", null: false
    t.string "phone", null: false
    t.string "qualification", null: false
    t.string "registration_number", null: false
    t.string "specialization"
    t.string "status", default: "pending"
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_registrations_on_email", unique: true
    t.index ["registration_number"], name: "index_registrations_on_registration_number", unique: true
  end
end
