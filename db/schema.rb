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

ActiveRecord::Schema.define(version: 20161022122152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_v1_user_device_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "os"
    t.string   "device_type"
    t.string   "device_model"
    t.string   "system_version"
    t.string   "app_version"
    t.string   "device_locale"
    t.string   "bundle_device"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_api_v1_user_device_infos_on_user_id", using: :btree
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_exams_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_exams_on_subject_id", using: :btree
  end

  create_table "marks", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "exam_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "student_mark"
    t.index ["exam_id"], name: "index_marks_on_exam_id", using: :btree
    t.index ["student_id"], name: "index_marks_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_marks_on_subject_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.string   "status"
    t.integer  "student_id"
    t.integer  "subject_id"
    t.integer  "mark_id"
    t.integer  "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_results_on_exam_id", using: :btree
    t.index ["mark_id"], name: "index_results_on_mark_id", using: :btree
    t.index ["student_id"], name: "index_results_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_results_on_subject_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "category"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["standard_id"], name: "index_sections_on_standard_id", using: :btree
  end

  create_table "standards", force: :cascade do |t|
    t.string   "category"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_standards_on_school_id", using: :btree
  end

  create_table "student_attendances", force: :cascade do |t|
    t.boolean  "is_active",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "student_id"
    t.index ["student_id"], name: "index_student_attendances_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_students_on_section_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_subjects_on_section_id", using: :btree
    t.index ["student_id"], name: "index_subjects_on_student_id", using: :btree
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_teachers_on_section_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "api_v1_user_device_infos", "users"
  add_foreign_key "student_attendances", "students"
end
