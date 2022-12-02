ActiveRecord::Schema[7.0].define(version: 2022_12_02_115518) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.string "title"
    t.integer "salary_exp"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_developers_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "name"
    t.date "reservation_date"
    t.string "city"
    t.bigint "user_id", null: false
    t.bigint "developer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_reservations_on_developer_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "developers", "users"
  add_foreign_key "reservations", "developers"
  add_foreign_key "reservations", "users"
end
