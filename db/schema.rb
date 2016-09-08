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

ActiveRecord::Schema.define(version: 20160908170849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", force: :cascade do |t|
    t.integer  "follower_id", null: false
    t.integer  "followed_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "follows", ["followed_id"], name: "index_follows_on_followed_id", using: :btree
  add_index "follows", ["follower_id"], name: "index_follows_on_follower_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id",         null: false
    t.string   "photo_img_url",   null: false
    t.string   "title"
    t.text     "description"
    t.integer  "views"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "width"
    t.integer  "height"
    t.string   "thumbnail_url"
    t.string   "mini_square_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.text     "about"
    t.string   "user_img_url"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "views"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
