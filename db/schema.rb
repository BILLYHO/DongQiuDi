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

ActiveRecord::Schema.define(version: 20150204073306) do

  create_table "members", force: true do |t|
    t.text     "member_id"
    t.text     "name"
    t.text     "gender"
    t.text     "position"
    t.text     "about"
    t.text     "motto"
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["member_id"], name: "index_members_on_member_id"

  create_table "topics", force: true do |t|
    t.text     "topic_id"
    t.integer  "topic_type"
    t.date     "time"
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["topic_type"], name: "index_topics_on_topic_type"

end
