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

ActiveRecord::Schema.define(version: 20180323193042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text     "address"
    t.text     "address2"
    t.integer  "city_id"
    t.integer  "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id", using: :btree
  end

  create_table "air_qualities", force: :cascade do |t|
    t.integer  "sensor_id"
    t.decimal  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_air_qualities_on_sensor_id", using: :btree
  end

  create_table "cameras", force: :cascade do |t|
    t.integer  "room_id"
    t.text     "video_feed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_cameras_on_room_id", using: :btree
  end

  create_table "cities", force: :cascade do |t|
    t.text     "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id", using: :btree
  end

  create_table "cultivators", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "company"
    t.text     "username"
    t.text     "profile_img"
    t.text     "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_cultivators_on_user_id", using: :btree
  end

  create_table "equipment", force: :cascade do |t|
    t.integer  "room_id"
    t.text     "type"
    t.text     "model"
    t.boolean  "isOn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_equipment_on_room_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "facilities", force: :cascade do |t|
    t.text     "name"
    t.integer  "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_facilities_on_address_id", using: :btree
  end

  create_table "humidities", force: :cascade do |t|
    t.integer  "sensor_id"
    t.decimal  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_humidities_on_sensor_id", using: :btree
  end

  create_table "light_models", force: :cascade do |t|
    t.text     "name"
    t.integer  "lumen_efficacy"
    t.text     "type"
    t.integer  "watts"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "lightings", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "light_model_id"
    t.integer  "area"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["light_model_id"], name: "index_lightings_on_light_model_id", using: :btree
    t.index ["room_id"], name: "index_lightings_on_room_id", using: :btree
  end

  create_table "lumen", force: :cascade do |t|
    t.integer  "sensor_id"
    t.decimal  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_lumen_on_sensor_id", using: :btree
  end

  create_table "phases", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phenotypes", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plant_sensors", force: :cascade do |t|
    t.integer  "plant_id"
    t.decimal  "ph"
    t.decimal  "hydration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_sensors_on_plant_id", using: :btree
  end

  create_table "plants", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "strain_id"
    t.integer  "phase_id"
    t.text     "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_plants_on_phase_id", using: :btree
    t.index ["room_id"], name: "index_plants_on_room_id", using: :btree
    t.index ["strain_id"], name: "index_plants_on_strain_id", using: :btree
  end

  create_table "room_settings", force: :cascade do |t|
    t.integer  "room_id"
    t.decimal  "humidity"
    t.decimal  "temperature"
    t.decimal  "air_quality"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["room_id"], name: "index_room_settings_on_room_id", using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "cultivator_id"
    t.integer  "facility_id"
    t.integer  "size"
    t.string   "unit"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cultivator_id"], name: "index_rooms_on_cultivator_id", using: :btree
    t.index ["facility_id"], name: "index_rooms_on_facility_id", using: :btree
  end

  create_table "sensors", force: :cascade do |t|
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_sensors_on_room_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.text     "name"
    t.integer  "phenotype_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["phenotype_id"], name: "index_strains_on_phenotype_id", using: :btree
  end

  create_table "temperatures", force: :cascade do |t|
    t.integer  "sensor_id"
    t.decimal  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_temperatures_on_sensor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "air_qualities", "sensors"
  add_foreign_key "cameras", "rooms"
  add_foreign_key "cities", "states"
  add_foreign_key "cultivators", "users"
  add_foreign_key "equipment", "rooms"
  add_foreign_key "examples", "users"
  add_foreign_key "facilities", "addresses"
  add_foreign_key "humidities", "sensors"
  add_foreign_key "lightings", "light_models"
  add_foreign_key "lightings", "rooms"
  add_foreign_key "lumen", "sensors"
  add_foreign_key "plant_sensors", "plants"
  add_foreign_key "plants", "phases"
  add_foreign_key "plants", "rooms"
  add_foreign_key "plants", "strains"
  add_foreign_key "room_settings", "rooms"
  add_foreign_key "rooms", "cultivators"
  add_foreign_key "rooms", "facilities"
  add_foreign_key "sensors", "rooms"
  add_foreign_key "strains", "phenotypes"
  add_foreign_key "temperatures", "sensors"
end
