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

ActiveRecord::Schema.define(version: 2021_11_16_050756) do

  create_table "add_intros", force: :cascade do |t|
    t.integer "user_id"
    t.integer "streamer_id"
    t.string "content", null: false
    t.boolean "is_markdown", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["streamer_id"], name: "index_add_intros_on_streamer_id"
    t.index ["user_id"], name: "index_add_intros_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_user_id"
    t.string "comment", null: false
    t.boolean "is_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_user_id"], name: "index_comments_on_post_user_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "displays", force: :cascade do |t|
    t.integer "streamer_id_id"
    t.boolean "denote_add_intro", default: true, null: false
    t.boolean "denote_comment", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["streamer_id_id"], name: "index_displays_on_streamer_id_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.integer "response_id"
    t.integer "add_intro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["add_intro_id"], name: "index_favorites_on_add_intro_id"
    t.index ["comment_id"], name: "index_favorites_on_comment_id"
    t.index ["response_id"], name: "index_favorites_on_response_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "responses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.string "content", null: false
    t.boolean "is_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_responses_on_comment_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "tag_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tag_relationships_on_tag_id"
    t.index ["user_id", "tag_id"], name: "index_tag_relationships_on_user_id_and_tag_id", unique: true
    t.index ["user_id"], name: "index_tag_relationships_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "image"
    t.string "intro"
    t.boolean "is_deleted", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_streamer", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.integer "streamer_id"
    t.string "video_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["streamer_id"], name: "index_videos_on_streamer_id"
  end

end
