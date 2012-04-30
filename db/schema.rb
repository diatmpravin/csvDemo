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

ActiveRecord::Schema.define(:version => 20120430043130) do

<<<<<<< HEAD
  create_table "employees", :force => true do |t|
    t.string   "firstname",     :default => "Vacant"
    t.string   "lastname",      :default => "Position"
=======
  create_table "EMPLOYEE", :primary_key => "ID", :force => true do |t|
    t.string  "FIRST_NAME",     :limit => 35, :default => "Vacant"
    t.string  "LAST_NAME",      :limit => 35, :default => "Position"
    t.string  "POSITION_TITLE", :limit => 64
    t.integer "POSITION",                                             :null => false
    t.integer "REPORT_TO",                                            :null => false
  end

  create_table "EMPLOYEES", :primary_key => "ID", :force => true do |t|
    t.string  "FIRST_NAME",     :limit => 35, :default => "Vacant"
    t.string  "LAST_NAME",      :limit => 35, :default => "Position"
    t.string  "POSITION_TITLE", :limit => 64
    t.integer "POSITION",                                             :null => false
    t.integer "REPORT_TO",                                            :null => false
  end

  create_table "imports", :force => true do |t|
>>>>>>> cf19cd8f37b27903d6fc3674f84f7c687433696c
    t.integer  "position"
    t.string   "positiontitle"
    t.integer  "reportto"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
