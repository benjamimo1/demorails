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

ActiveRecord::Schema.define(version: 20171023093956) do

  create_table "album_comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_album_comments_on_album_id"
  end

  create_table "albums", force: :cascade do |t|
    t.text     "name"
    t.text     "songnumber"
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "artist_comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artist_comments_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.text     "description"
    t.text     "genre"
    t.text     "origin"
    t.text     "yearsactive"
    t.text     "members"
    t.text     "name"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_artists_on_user_id"
  end

  create_table "contains", force: :cascade do |t|
    t.integer  "song_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["playlist_id"], name: "index_contains_on_playlist_id"
    t.index ["song_id"], name: "index_contains_on_song_id"
  end

  create_table "favorite_albums", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_favorite_albums_on_album_id"
    t.index ["user_id"], name: "index_favorite_albums_on_user_id"
  end

  create_table "favorite_artists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_favorite_artists_on_artist_id"
    t.index ["user_id"], name: "index_favorite_artists_on_user_id"
  end

  create_table "favorite_playlists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["playlist_id"], name: "index_favorite_playlists_on_playlist_id"
    t.index ["user_id"], name: "index_favorite_playlists_on_user_id"
  end

  create_table "favorite_songs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_favorite_songs_on_song_id"
    t.index ["user_id"], name: "index_favorite_songs_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.boolean  "public"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "song_comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_comments_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.text     "name"
    t.integer  "album_id"
    t.integer  "user_id"
    t.integer  "length"
    t.text     "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
    t.index ["user_id"], name: "index_songs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image_url"
    t.string   "password_digest"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
