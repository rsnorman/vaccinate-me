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

ActiveRecord::Schema.define(version: 2021_01_04_024439) do

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interaction_events", force: :cascade do |t|
    t.integer "event_type_id", null: false
    t.integer "interaction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_type_id"], name: "index_interaction_events_on_event_type_id"
    t.index ["interaction_id"], name: "index_interaction_events_on_interaction_id"
  end

  create_table "interaction_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.integer "interaction_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interaction_type_id"], name: "index_interactions_on_interaction_type_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "source_id"
    t.text "body"
    t.string "from"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.date "birth_date"
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "interaction_events", "event_types"
  add_foreign_key "interaction_events", "interactions"
  add_foreign_key "interactions", "interaction_types"
end
