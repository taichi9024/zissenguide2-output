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

ActiveRecord::Schema.define(version: 2020_12_04_033157) do

  create_table "admin_members", force: :cascade do |t|
    t.string "email", null: false
    t.string "hash_password", null: false
    t.boolean "suspend", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

end
