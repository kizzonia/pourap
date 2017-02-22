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

ActiveRecord::Schema.define(version: 20170222202610) do

  create_table "abouts", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.text     "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "facebook"
    t.string   "twitter"
    t.text     "email"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "date"
    t.string   "link"
    t.text     "description"
    t.text     "owner"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
