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

ActiveRecord::Schema.define(version: 20150202085317) do

  create_table "members", force: true do |t|
    t.integer  "member_id"
    t.text     "name"
    t.text     "gender"
    t.text     "position"
    t.text     "about"
    t.text     "motto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  add_index "members", ["member_id"], name: "index_members_on_member_id"

  create_table "news", force: true do |t|
    t.text     "news_id"
    t.text     "time"
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "news", ["news_id"], name: "index_news_on_news_id"

end
