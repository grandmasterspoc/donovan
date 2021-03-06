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

ActiveRecord::Schema.define(version: 20160225004048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backers", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "bid"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "backers", ["email"], name: "index_backers_on_email", unique: true, using: :btree
  add_index "backers", ["reset_password_token"], name: "index_backers_on_reset_password_token", unique: true, using: :btree

  create_table "backers_fundraisers", id: false, force: :cascade do |t|
    t.integer "backer_id",     null: false
    t.integer "fundraiser_id", null: false
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "backer_id"
    t.integer  "fundraiser_id"
    t.float    "money_backed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true, using: :btree
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree

  create_table "fundraisers", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "video_url"
    t.integer  "goal",                              null: false
    t.integer  "equity_given_away",                 null: false
    t.integer  "money_raised",      default: 0,     null: false
    t.integer  "days_left"
    t.integer  "number_of_backers"
    t.boolean  "featured",          default: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

end
