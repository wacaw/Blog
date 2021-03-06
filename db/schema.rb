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

ActiveRecord::Schema.define(:version => 20101217010058) do

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "godziny"
    t.text     "plan"
    t.text     "realizacja"
    t.text     "uwagi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rands", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.boolean  "important"
    t.boolean  "urgent"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                            :null => false
    t.string   "email",                            :null => false
    t.string   "crypted_password",                 :null => false
    t.string   "password_salt"
    t.string   "persistence_token"
    t.text     "description"
    t.string   "lang"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "login_count",       :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["login"], :name => "index_users_on_login"

  create_table "words", :force => true do |t|
    t.string   "pl"
    t.string   "en"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
