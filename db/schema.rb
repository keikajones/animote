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

ActiveRecord::Schema.define(version: 20141103165559) do

  create_table "color_emotions", force: true do |t|
    t.integer  "color_id"
    t.integer  "emotion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "color_emotions", ["color_id"], name: "index_color_emotions_on_color_id"
  add_index "color_emotions", ["emotion_id"], name: "index_color_emotions_on_emotion_id"

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "hexcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emotions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_emotions", force: true do |t|
    t.integer  "image_id"
    t.integer  "emotion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_emotions", ["emotion_id"], name: "index_image_emotions_on_emotion_id"
  add_index "image_emotions", ["image_id"], name: "index_image_emotions_on_image_id"

  create_table "images", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "music_emotions", force: true do |t|
    t.integer  "music_id"
    t.integer  "emotion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "music_emotions", ["emotion_id"], name: "index_music_emotions_on_emotion_id"
  add_index "music_emotions", ["music_id"], name: "index_music_emotions_on_music_id"

  create_table "musics", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "video_emotions", force: true do |t|
    t.integer  "video_id"
    t.integer  "emotion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "video_emotions", ["emotion_id"], name: "index_video_emotions_on_emotion_id"
  add_index "video_emotions", ["video_id"], name: "index_video_emotions_on_video_id"

  create_table "videos", force: true do |t|
    t.string   "name"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
