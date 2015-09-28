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

ActiveRecord::Schema.define(version: 20150928175321) do

  create_table "blocks", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "body",         limit: 65535
    t.string   "position",     limit: 255
    t.string   "display",      limit: 255
    t.boolean  "show_title"
    t.string   "class_suffix", limit: 255
    t.boolean  "is_published"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.integer  "section_id",   limit: 4
    t.text     "body",         limit: 65535
    t.integer  "order",        limit: 4
    t.boolean  "is_published"
    t.boolean  "menu_display"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end