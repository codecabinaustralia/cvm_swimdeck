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

ActiveRecord::Schema.define(version: 2018_04_10_035433) do

  create_table "automations", force: :cascade do |t|
    t.string "trigger_model"
    t.string "trigger_crud"
    t.string "trigger_math"
    t.integer "rule_integer"
    t.string "rule_value"
    t.string "action_model"
    t.string "action_crud"
    t.string "action_table"
    t.string "action_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checklist_items", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.integer "checklist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checklist_id"], name: "index_checklist_items_on_checklist_id"
  end

  create_table "checklists", force: :cascade do |t|
    t.integer "site_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_checklists_on_lesson_id"
    t.index ["site_id"], name: "index_checklists_on_site_id"
  end

  create_table "client_sites", force: :cascade do |t|
    t.integer "client_id"
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_sites_on_client_id"
    t.index ["site_id"], name: "index_client_sites_on_site_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "completed_checklist_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "checklist_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checklist_item_id"], name: "index_completed_checklist_items_on_checklist_item_id"
    t.index ["user_id"], name: "index_completed_checklist_items_on_user_id"
  end

  create_table "completed_checklists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "checklist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["checklist_id"], name: "index_completed_checklists_on_checklist_id"
    t.index ["user_id"], name: "index_completed_checklists_on_user_id"
  end

  create_table "completed_tasks", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.integer "user_id"
    t.integer "student_id"
    t.integer "client_id"
    t.integer "automation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["automation_id"], name: "index_completed_tasks_on_automation_id"
    t.index ["client_id"], name: "index_completed_tasks_on_client_id"
    t.index ["student_id"], name: "index_completed_tasks_on_student_id"
    t.index ["user_id"], name: "index_completed_tasks_on_user_id"
  end

  create_table "lesson_participants", force: :cascade do |t|
    t.integer "student_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_participants_on_lesson_id"
    t.index ["student_id"], name: "index_lesson_participants_on_student_id"
  end

  create_table "lesson_sites", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_sites_on_lesson_id"
    t.index ["site_id"], name: "index_lesson_sites_on_site_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.date "start_time"
    t.date "finish_time"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "title"
    t.integer "rank_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "role_id"
    t.string "model_name"
    t.string "perm_create"
    t.string "perm_read"
    t.string "perm_update"
    t.string "perm_destroy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.string "rank_order"
    t.integer "level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_skills_on_level_id"
  end

  create_table "student_sites", force: :cascade do |t|
    t.integer "student_id"
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_student_sites_on_site_id"
    t.index ["student_id"], name: "index_student_sites_on_student_id"
  end

  create_table "student_skills", force: :cascade do |t|
    t.integer "student_id"
    t.integer "user_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_id"
    t.index ["skill_id"], name: "index_student_skills_on_skill_id"
    t.index ["student_id"], name: "index_student_skills_on_student_id"
    t.index ["user_id"], name: "index_student_skills_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "client_id"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "personal_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_students_on_client_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.integer "user_id"
    t.integer "student_id"
    t.integer "client_id"
    t.integer "automation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["automation_id"], name: "index_tasks_on_automation_id"
    t.index ["client_id"], name: "index_tasks_on_client_id"
    t.index ["student_id"], name: "index_tasks_on_student_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "user_sites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_user_sites_on_site_id"
    t.index ["user_id"], name: "index_user_sites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
