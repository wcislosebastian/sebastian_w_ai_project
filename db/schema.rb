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

ActiveRecord::Schema.define(version: 2019_06_15_081447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "teacher_id"
    t.bigint "parent_id"
    t.bigint "student_id"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["parent_id"], name: "index_admin_users_on_parent_id"
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
    t.index ["student_id"], name: "index_admin_users_on_student_id"
    t.index ["teacher_id"], name: "index_admin_users_on_teacher_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.string "presence"
    t.text "description"
    t.boolean "excused"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "real_class_id"
    t.bigint "student_id"
    t.index ["real_class_id"], name: "index_attendances_on_real_class_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "class_templates", force: :cascade do |t|
    t.string "name"
    t.date "year"
    t.integer "semester"
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_templates_subjects", id: false, force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "class_template_id", null: false
  end

  create_table "marks", force: :cascade do |t|
    t.string "mark"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "real_class_id"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.bigint "subject_id"
    t.index ["real_class_id"], name: "index_marks_on_real_class_id"
    t.index ["student_id"], name: "index_marks_on_student_id"
    t.index ["subject_id"], name: "index_marks_on_subject_id"
    t.index ["teacher_id"], name: "index_marks_on_teacher_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "note"
    t.boolean "note_valid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "real_class_id"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.index ["real_class_id"], name: "index_notes_on_real_class_id"
    t.index ["student_id"], name: "index_notes_on_student_id"
    t.index ["teacher_id"], name: "index_notes_on_teacher_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents_students", id: false, force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "parent_id", null: false
  end

  create_table "real_classes", force: :cascade do |t|
    t.string "name"
    t.date "year"
    t.integer "semester"
    t.boolean "active"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "class_template_id"
    t.index ["class_template_id"], name: "index_real_classes_on_class_template_id"
  end

  create_table "real_classes_students", id: false, force: :cascade do |t|
    t.bigint "real_class_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "real_classes_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "real_class_id", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "subject_id", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admin_users", "parents"
  add_foreign_key "admin_users", "students"
  add_foreign_key "admin_users", "teachers"
  add_foreign_key "attendances", "real_classes"
  add_foreign_key "attendances", "students"
  add_foreign_key "marks", "real_classes"
  add_foreign_key "marks", "students"
  add_foreign_key "marks", "subjects"
  add_foreign_key "marks", "teachers"
  add_foreign_key "notes", "real_classes"
  add_foreign_key "notes", "students"
  add_foreign_key "notes", "teachers"
  add_foreign_key "real_classes", "class_templates"
end
