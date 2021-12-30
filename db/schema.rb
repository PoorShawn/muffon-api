# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_30_205226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "listeners_count"
    t.index ["title", "artist_id"], name: "index_albums_on_title_and_artist_id", unique: true
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "listeners_count"
    t.integer "tag_ids", default: [], array: true
    t.index ["name"], name: "index_artists_on_name", unique: true
  end

  create_table "bookmark_albums", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id", "profile_id"], name: "index_bookmark_albums_on_album_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_bookmark_albums_on_profile_id"
  end

  create_table "bookmark_artists", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id", "profile_id"], name: "index_bookmark_artists_on_artist_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_bookmark_artists_on_profile_id"
  end

  create_table "bookmark_tracks", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "track_id"
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_bookmark_tracks_on_profile_id"
    t.index ["track_id", "profile_id"], name: "index_bookmark_tracks_on_track_id_and_profile_id", unique: true
  end

  create_table "conversations", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "other_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_profile_id", "profile_id"], name: "index_conversations_on_other_profile_id_and_profile_id", unique: true
    t.index ["other_profile_id"], name: "index_conversations_on_other_profile_id"
    t.index ["profile_id"], name: "index_conversations_on_profile_id"
  end

  create_table "favorite_albums", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id", "profile_id"], name: "index_favorite_albums_on_album_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_favorite_albums_on_profile_id"
  end

  create_table "favorite_artists", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id", "profile_id"], name: "index_favorite_artists_on_artist_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_favorite_artists_on_profile_id"
  end

  create_table "favorite_tracks", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "track_id"
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_favorite_tracks_on_profile_id"
    t.index ["track_id", "profile_id"], name: "index_favorite_tracks_on_track_id_and_profile_id", unique: true
  end

  create_table "listened_albums", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id", "profile_id"], name: "index_listened_albums_on_album_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_listened_albums_on_profile_id"
  end

  create_table "listened_artists", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "artist_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id", "profile_id"], name: "index_listened_artists_on_artist_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_listened_artists_on_profile_id"
  end

  create_table "listened_tracks", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "track_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_listened_tracks_on_profile_id"
    t.index ["track_id", "profile_id"], name: "index_listened_tracks_on_track_id_and_profile_id", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "conversation_id", null: false
    t.bigint "profile_id", null: false
    t.text "content"
    t.integer "track_ids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["profile_id"], name: "index_messages_on_profile_id"
  end

  create_table "playlist_tracks", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.integer "track_id"
    t.integer "artist_id"
    t.integer "album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playlist_id"], name: "index_playlist_tracks_on_playlist_id"
    t.index ["track_id", "playlist_id"], name: "index_playlist_tracks_on_track_id_and_playlist_id", unique: true
  end

  create_table "playlists", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.string "title"
    t.integer "playlist_tracks_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_playlists_on_profile_id"
    t.index ["title", "profile_id"], name: "index_playlists_on_title_and_profile_id", unique: true
  end

  create_table "profile_albums", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "album_id", null: false
    t.bigint "profile_artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_tracks_count", default: 0
    t.index ["album_id", "profile_id"], name: "index_profile_albums_on_album_id_and_profile_id", unique: true
    t.index ["profile_artist_id"], name: "index_profile_albums_on_profile_artist_id"
    t.index ["profile_id"], name: "index_profile_albums_on_profile_id"
  end

  create_table "profile_artists", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "profile_tracks_count", default: 0
    t.integer "profile_albums_count", default: 0
    t.index ["artist_id", "profile_id"], name: "index_profile_artists_on_artist_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_profile_artists_on_profile_id"
  end

  create_table "profile_posts", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "other_profile_id", null: false
    t.text "content"
    t.integer "track_ids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_profile_id"], name: "index_profile_posts_on_other_profile_id"
    t.index ["profile_id"], name: "index_profile_posts_on_profile_id"
  end

  create_table "profile_tracks", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "track_id", null: false
    t.bigint "profile_artist_id", null: false
    t.bigint "profile_album_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_album_id"], name: "index_profile_tracks_on_profile_album_id"
    t.index ["profile_artist_id"], name: "index_profile_tracks_on_profile_artist_id"
    t.index ["profile_id"], name: "index_profile_tracks_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "email"
    t.string "token"
    t.string "password_digest"
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gender"
    t.string "birthdate"
    t.string "country"
    t.string "city"
    t.integer "role", default: 0
    t.string "lastfm_session_key"
    t.string "lastfm_nickname"
    t.integer "following_profiles_count", default: 0
    t.integer "follower_profiles_count", default: 0
    t.boolean "online", default: false
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["nickname"], name: "index_profiles_on_nickname", unique: true
  end

  create_table "recommendations", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.integer "artist_id"
    t.integer "profile_artist_ids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "deleted", default: false
    t.index ["artist_id", "profile_id"], name: "index_recommendations_on_artist_id_and_profile_id", unique: true
    t.index ["profile_id"], name: "index_recommendations_on_profile_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "other_profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["other_profile_id", "profile_id"], name: "index_relationships_on_other_profile_id_and_profile_id", unique: true
    t.index ["other_profile_id"], name: "index_relationships_on_other_profile_id"
    t.index ["profile_id"], name: "index_relationships_on_profile_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "player_id"
    t.index ["title", "artist_id"], name: "index_tracks_on_title_and_artist_id", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookmark_albums", "profiles"
  add_foreign_key "bookmark_artists", "profiles"
  add_foreign_key "bookmark_tracks", "profiles"
  add_foreign_key "conversations", "profiles"
  add_foreign_key "conversations", "profiles", column: "other_profile_id"
  add_foreign_key "favorite_albums", "profiles"
  add_foreign_key "favorite_artists", "profiles"
  add_foreign_key "favorite_tracks", "profiles"
  add_foreign_key "listened_albums", "profiles"
  add_foreign_key "listened_artists", "profiles"
  add_foreign_key "listened_tracks", "profiles"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "profiles"
  add_foreign_key "playlist_tracks", "playlists"
  add_foreign_key "playlists", "profiles"
  add_foreign_key "profile_albums", "profile_artists"
  add_foreign_key "profile_albums", "profiles"
  add_foreign_key "profile_artists", "profiles"
  add_foreign_key "profile_posts", "profiles"
  add_foreign_key "profile_posts", "profiles", column: "other_profile_id"
  add_foreign_key "profile_tracks", "profile_albums"
  add_foreign_key "profile_tracks", "profile_artists"
  add_foreign_key "profile_tracks", "profiles"
  add_foreign_key "recommendations", "profiles"
  add_foreign_key "relationships", "profiles"
  add_foreign_key "relationships", "profiles", column: "other_profile_id"
end
