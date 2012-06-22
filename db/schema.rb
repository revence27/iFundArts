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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120619172306) do

  create_table "admin_passwords", :force => true do |t|
    t.text     "sha1_pass"
    t.text     "sha1_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conferences", :force => true do |t|
    t.datetime "when"
    t.text     "title"
    t.text     "tagline"
    t.text     "where"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "f_b_keys", :force => true do |t|
    t.text     "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facebook_keys", :force => true do |t|
    t.text     "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_categories", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.text     "name",                         :null => false
    t.text     "image",                        :null => false
    t.text     "description",                  :null => false
    t.datetime "ends_at",                      :null => false
    t.integer  "account_id",                   :null => false
    t.integer  "category_id",                  :null => false
    t.datetime "funded_at"
    t.float    "needs",                        :null => false
    t.float    "has_got",     :default => 0.0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
