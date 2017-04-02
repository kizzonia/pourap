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

ActiveRecord::Schema.define(version: 20170402171511) do

  create_table "abouts", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.text     "contact"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "facebook"
    t.string   "twitter"
    t.text     "email"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "banners", force: :cascade do |t|
    t.text     "qoute"
    t.text     "qouter"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "bloggers", force: :cascade do |t|
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
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.index ["email"], name: "index_bloggers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_bloggers_on_reset_password_token", unique: true
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "shortDescription"
    t.text     "description"
    t.text     "location"
    t.string   "eventDate"
    t.text     "sponsors"
    t.text     "socialLink"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "eventscomments", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_eventscomments_on_event_id"
  end

  create_table "facts", force: :cascade do |t|
    t.string   "fun1"
    t.string   "fun2"
    t.string   "fun3"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "picture_name"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  create_table "musiccomments", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "music_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["music_id"], name: "index_musiccomments_on_music_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string   "songname"
    t.text     "description"
    t.string   "artist"
    t.text     "discography"
    t.datetime "published"
    t.text     "subtitle"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "albumimage_file_name"
    t.string   "albumimage_content_type"
    t.integer  "albumimage_file_size"
    t.datetime "albumimage_updated_at"
    t.string   "song_file_name"
    t.string   "song_content_type"
    t.integer  "song_file_size"
    t.datetime "song_updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.index ["cached_votes_down"], name: "index_musics_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_musics_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_musics_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_musics_on_cached_votes_up"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "date"
    t.string   "link"
    t.text     "description"
    t.text     "owner"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.datetime "datemain"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "voting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ip"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "soundcloud_user_id"
    t.string   "soundcloud_username"
    t.string   "soundcloud_access_token"
    t.string   "soundcloud_refresh_token"
    t.datetime "soundcloud_expires_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "published_at"
    t.integer  "likes"
    t.integer  "dislikes"
    t.string   "uid"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.text     "description"
    t.text     "story"
    t.integer  "cached_votes_total", default: 0
    t.integer  "cached_votes_score", default: 0
    t.integer  "cached_votes_up",    default: 0
    t.integer  "cached_votes_down",  default: 0
    t.index ["cached_votes_down"], name: "index_videos_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_videos_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_videos_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_videos_on_cached_votes_up"
    t.index ["uid"], name: "index_videos_on_uid"
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
