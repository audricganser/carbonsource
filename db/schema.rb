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

ActiveRecord::Schema.define(version: 20170112151943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carbon_emissions", force: :cascade do |t|
    t.string "measurement_date"
    t.string "amount"
    t.string "url"
  end

  create_table "contributions", force: :cascade do |t|
    t.string   "amount"
    t.datetime "created_at"
    t.integer  "organisation_id"
    t.index ["organisation_id"], name: "index_contributions_on_organisation_id", using: :btree
  end

  create_table "info_contacts", force: :cascade do |t|
    t.string "email"
    t.string "address"
    t.string "phone"
    t.string "website"
    t.string "postal_code"
    t.string "city"
    t.string "region1"
    t.string "region2"
    t.string "region3"
    t.string "state"
    t.string "country"
  end

  create_table "organisations", force: :cascade do |t|
    t.string  "type"
    t.string  "name"
    t.integer "info_contact_id"
    t.index ["info_contact_id"], name: "index_organisations_on_info_contact_id", using: :btree
  end

  create_table "politicians", force: :cascade do |t|
    t.string  "position"
    t.string  "party"
    t.string  "name_first"
    t.string  "name_last"
    t.integer "info_contact_id"
    t.index ["info_contact_id"], name: "index_politicians_on_info_contact_id", using: :btree
  end

  create_table "searches", force: :cascade do |t|
    t.string   "query"
    t.datetime "date"
  end

  create_table "sources", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.string  "url"
    t.string  "remark"
    t.integer "politician_id"
    t.index ["politician_id"], name: "index_sources_on_politician_id", using: :btree
  end

end
