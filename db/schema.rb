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

ActiveRecord::Schema.define(:version => 20130930011027) do

  create_table "bank_accounts", :force => true do |t|
    t.integer  "tyims_id",         :limit => 8
    t.string   "account_name"
    t.string   "account_number"
    t.text     "comment"
    t.string   "bsb_number"
    t.integer  "bankable_id"
    t.string   "bankable_type"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.date     "tyims_updated_on"
    t.date     "tyims_created_on"
    t.boolean  "lock_account"
  end

  create_table "people", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "surname"
    t.integer  "tyims_id",             :limit => 8
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "type"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "organisation_id",      :limit => 8
    t.integer  "created_by"
    t.integer  "updated_by"
    t.date     "tyims_updated_on"
    t.integer  "contact_qualifier_id"
    t.integer  "registration_id"
    t.boolean  "existing_worker"
    t.text     "notes"
    t.string   "tc_ids"
    t.boolean  "saaa"
    t.boolean  "daaws"
    t.string   "file_number"
    t.date     "tyims_created_on"
    t.integer  "qualification_id"
  end

end
