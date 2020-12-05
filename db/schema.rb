# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_05_173419) do

  create_table "addresses", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.string "type"
    t.string "postal_code"
    t.string "city"
    t.string "address1"
    t.string "address2"
    t.string "company_name", default: "", null: false
    t.string "division_name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "admin_members", force: :cascade do |t|
    t.string "email", null: false
    t.string "hash_password", null: false
    t.boolean "suspend", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "name_kana"
    t.string "gender"
    t.string "birthday"
    t.string "hash_password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "staff_events", force: :cascade do |t|
    t.integer "staff_member_id", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.index ["created_at"], name: "index_staff_events_on_created_at"
    t.index ["staff_member_id"], name: "index_staff_events_on_staff_member_id"
  end

  create_table "staff_members", force: :cascade do |t|
    t.string "email", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.string "hash_password", null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.boolean "suspend", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "staff_events", "staff_members"
end
