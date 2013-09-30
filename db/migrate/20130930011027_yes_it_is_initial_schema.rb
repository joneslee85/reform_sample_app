class YesItIsInitialSchema < ActiveRecord::Migration
  def change
    create_table "people" do |t|
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

    create_table "bank_accounts" do |t|
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
  end

  def down
  end
end
