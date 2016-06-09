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

ActiveRecord::Schema.define(version: 20160609111055) do

  create_table "pants", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "Full_length"
    t.integer  "Waist"
    t.integer  "Hip"
    t.integer  "Thigh"
    t.integer  "Knee_length"
    t.integer  "Knee_diameter"
    t.integer  "Folik"
    t.boolean  "Long_belt"
    t.boolean  "short_belt"
    t.boolean  "side_stich"
    t.boolean  "bottom_stich"
    t.boolean  "Pockets"
    t.boolean  "Back_pocket"
    t.boolean  "cover"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "Name"
    t.string   "Mobile_no"
    t.string   "Address"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
  end

  create_table "shirts", force: :cascade do |t|
    t.boolean  "Half_shirt"
    t.boolean  "Full_shirt"
    t.integer  "Full_length"
    t.integer  "Sleeve_length"
    t.integer  "shoulder"
    t.integer  "collar"
    t.integer  "chest"
    t.integer  "stomach"
    t.integer  "hip"
    t.boolean  "Pocket"
    t.boolean  "side_cut"
    t.boolean  "side_cover"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
