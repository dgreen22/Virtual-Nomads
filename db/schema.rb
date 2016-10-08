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

ActiveRecord::Schema.define(version: 20161006221519) do

  create_table "blog_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.string   "posted_by"
    t.text     "comments"
    t.string   "blog_pic"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "blog_post_id"
    t.integer  "category_id"
    t.index ["blog_post_id"], name: "index_categorizations_on_blog_post_id"
    t.index ["category_id"], name: "index_categorizations_on_category_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment_content"
    t.string   "comment_content_creator"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "blog_post_id"
    t.index ["blog_post_id"], name: "index_comments_on_blog_post_id"
  end

  create_table "prospects", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "mailing_address"
    t.string   "question_1"
    t.string   "question_2"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
  end

end
