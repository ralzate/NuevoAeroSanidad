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

ActiveRecord::Schema.define(version: 20151113135559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "airports", ["city_id"], name: "index_airports_on_city_id", using: :btree

  create_table "arles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "country_code"
  end

  create_table "clinic_histories", force: :cascade do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.string   "type_document"
    t.string   "document"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "profession"
    t.string   "blood_type"
    t.string   "country_code"
    t.string   "nacionality"
    t.integer  "eps_id"
    t.integer  "arl_id"
    t.string   "address"
    t.string   "condition"
    t.string   "accompanist_name"
    t.string   "relationship"
    t.string   "phone"
    t.integer  "user_id"
    t.string   "city"
    t.integer  "city_id"
    t.string   "department"
    t.string   "cove"
    t.string   "mobiel_service"
    t.integer  "airport_id"
    t.string   "type_service"
    t.integer  "patient_id"
    t.string   "origin"
    t.string   "destination"
    t.string   "company"
    t.text     "reason_for_consultation"
    t.text     "current_illness"
    t.boolean  "neunatales_true"
    t.boolean  "neunatales_false"
    t.text     "neunatales_description"
    t.boolean  "patologicos_true"
    t.boolean  "patologicos_false"
    t.text     "patologicos_description"
    t.boolean  "quirurgicos_true"
    t.boolean  "quirurgicos_false"
    t.text     "quirurgicos_description"
    t.boolean  "farmacologicos_true"
    t.boolean  "farmacologicos_false"
    t.text     "farmacologicos_description"
    t.boolean  "alergicos_true"
    t.boolean  "alergicos_false"
    t.text     "alergicos_description"
    t.boolean  "toxicos_true"
    t.boolean  "toxicos_false"
    t.text     "toxicos_description"
    t.boolean  "traumaticos_true"
    t.boolean  "traumaticos_false"
    t.text     "traumaticos_description"
    t.boolean  "hospitables_true"
    t.boolean  "hospitables_false"
    t.text     "hospitables_description"
    t.boolean  "atep_laboral_true"
    t.boolean  "atep_laboral_false"
    t.text     "atep_laboral_description"
    t.boolean  "familiar_true"
    t.boolean  "familiar_false"
    t.text     "familiar_description"
    t.boolean  "inmunologicos_true"
    t.boolean  "inmunologicos_false"
    t.text     "inmunologios_description"
    t.boolean  "asociado_viajes_de_vuelo_true"
    t.boolean  "asociado_viajes_de_vuelo_false"
    t.text     "asociado_viajes_de_vuelo_description"
    t.integer  "menstrual_cycle"
    t.string   "gestational_age"
    t.string   "eco"
    t.integer  "fum"
    t.boolean  "pregnancy_true"
    t.boolean  "pregnancy_false"
    t.string   "g"
    t.string   "p"
    t.string   "c"
    t.string   "a"
    t.string   "m"
    t.string   "v"
    t.string   "e"
    t.boolean  "cardiovascular_true"
    t.boolean  "cardiovascular_false"
    t.text     "cardiovascular_description"
    t.boolean  "respiratory_true"
    t.boolean  "respiratory_false"
    t.text     "respiratory_description"
    t.boolean  "abdominal_true"
    t.boolean  "abdominal_false"
    t.text     "abdominal_description"
    t.boolean  "genito_urinario_true"
    t.boolean  "genito_urinario_false"
    t.text     "genito_urinario_description"
    t.boolean  "neurological_true"
    t.boolean  "neurological_false"
    t.text     "neurological_description"
    t.boolean  "mental_true"
    t.boolean  "mental_false"
    t.text     "mental_description"
    t.boolean  "sense_organ_true"
    t.boolean  "sense_organ_false"
    t.string   "sense_organ_description"
    t.boolean  "skeletal_muscle_true"
    t.boolean  "skeletal_muscle_false"
    t.text     "skeletal_muscle_description"
    t.string   "ta_mmgh"
    t.string   "heart_rate"
    t.string   "breathing_frequency"
    t.string   "sat_of_o_ambiente"
    t.string   "sat_of_o_supplementary"
    t.string   "temperature"
    t.string   "weight_in_kilograms"
    t.string   "height_in_centimeters"
    t.boolean  "head_true"
    t.boolean  "head_false"
    t.text     "head_description"
    t.boolean  "neck_true"
    t.boolean  "neck_false"
    t.text     "neck_description"
    t.boolean  "rib_cage_true"
    t.boolean  "rib_cage_false"
    t.text     "rib_cage_description"
    t.boolean  "heart_true"
    t.boolean  "heart_false"
    t.text     "heart_description"
    t.boolean  "lungs_true"
    t.boolean  "lungs_false"
    t.text     "lungs_description"
    t.boolean  "abdomen_true"
    t.boolean  "abdomen_false"
    t.text     "abdomen_description"
    t.boolean  "genitourinary_true"
    t.boolean  "genitourinary_false"
    t.text     "genitourinary_description"
    t.boolean  "rectum_true"
    t.boolean  "rectum_false"
    t.text     "rectum_description"
    t.boolean  "extremities_true"
    t.boolean  "extremities_false"
    t.text     "extremities_description"
    t.boolean  "skin_and_appendages_true"
    t.boolean  "skin_and_appendages_false"
    t.text     "skin_and_appendages_description"
    t.boolean  "piel_y_faneras2_true"
    t.boolean  "piel_y_faneras2_false"
    t.text     "piel_y_faneras2_descripcion"
    t.string   "alteration"
    t.integer  "eye_opening"
    t.integer  "verbal_answer"
    t.integer  "motor_response"
    t.string   "other_signs"
    t.integer  "escala_de_glasgow"
    t.text     "analysis"
    t.text     "print_diagnosed"
    t.text     "plan_and_treatment"
    t.text     "observations_recommendations"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "clinic_histories", ["airport_id"], name: "index_clinic_histories_on_airport_id", using: :btree
  add_index "clinic_histories", ["arl_id"], name: "index_clinic_histories_on_arl_id", using: :btree
  add_index "clinic_histories", ["eps_id"], name: "index_clinic_histories_on_eps_id", using: :btree
  add_index "clinic_histories", ["patient_id"], name: "index_clinic_histories_on_patient_id", using: :btree
  add_index "clinic_histories", ["user_id"], name: "index_clinic_histories_on_user_id", using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "epses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type", using: :btree

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree

  create_table "patients", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.string   "type_document"
    t.string   "document"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "profession"
    t.string   "blood_type"
    t.string   "nacionality"
    t.string   "address"
    t.string   "condition"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "country_code"
  end

  add_index "patients", ["city_id"], name: "index_patients_on_city_id", using: :btree
  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_file"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "progress_notes", force: :cascade do |t|
    t.string   "patient_name"
    t.string   "patient_document"
    t.string   "type_document"
    t.integer  "age"
    t.string   "medical_record"
    t.text     "description"
    t.integer  "clinic_history_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "progress_notes", ["clinic_history_id"], name: "index_progress_notes_on_clinic_history_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "restrictions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                       null: false
    t.string   "names"
    t.string   "surnames"
    t.integer  "type_document"
    t.string   "document"
    t.string   "medical_record"
    t.integer  "rol_id"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "picture"
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", using: :btree

  add_foreign_key "airports", "cities"
  add_foreign_key "clinic_histories", "airports"
  add_foreign_key "clinic_histories", "arles"
  add_foreign_key "clinic_histories", "epses"
  add_foreign_key "clinic_histories", "patients"
  add_foreign_key "clinic_histories", "users"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "patients", "users"
  add_foreign_key "products", "users"
  add_foreign_key "progress_notes", "clinic_histories"
end
