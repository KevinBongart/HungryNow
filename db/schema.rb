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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111101235931) do

  create_table "recipes", :force => true do |t|
    t.float    "rating"
    t.string   "source_name"
    t.string   "thumb"
    t.string   "title"
    t.string   "source_url"
    t.string   "pf_url"
    t.datetime "published"
    t.string   "source_img"
    t.string   "shortcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes_searches", :id => false, :force => true do |t|
    t.integer  "recipe_id"
    t.integer  "search_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
