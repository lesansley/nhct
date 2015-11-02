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

ActiveRecord::Schema.define(version: 20151102173537) do

  create_table "operations", force: :cascade do |t|
    t.integer  "OperationCode"
    t.date     "OperationDate"
    t.integer  "patient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "operations", ["patient_id"], name: "index_operations_on_patient_id"

  create_table "patients", force: :cascade do |t|
    t.string   "PatientIdentifier"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "survey_results", force: :cascade do |t|
    t.integer  "ResultValue"
    t.date     "SurveyDate"
    t.integer  "operation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "survey_results", ["operation_id"], name: "index_survey_results_on_operation_id"

end
