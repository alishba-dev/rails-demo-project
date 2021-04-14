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

ActiveRecord::Schema.define(version: 2021_04_14_075316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_histories", force: :cascade do |t|
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_histories_on_account_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_accounts_on_supplier_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "physician_id"
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "heading"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_parts", id: false, force: :cascade do |t|
    t.bigint "part_id", null: false
    t.bigint "assembly_id", null: false
    t.bigint "parts_id"
    t.bigint "assemblies_id"
    t.index ["assemblies_id"], name: "index_assemblies_parts_on_assemblies_id"
    t.index ["parts_id"], name: "index_assemblies_parts_on_parts_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "baskets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "published_at"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.date "dob"
    t.string "hobby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_married"
    t.string "email"
  end

  create_table "cars", force: :cascade do |t|
    t.string "brand"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "engineer_id"
    t.index ["engineer_id"], name: "index_cars_on_engineer_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.string "course_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engineers", force: :cascade do |t|
    t.string "fullname"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "title"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mails", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model1s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model2s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model3s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "model1_id"
    t.bigint "model2_id"
    t.index ["model1_id"], name: "index_model3s_on_model1_id"
    t.index ["model2_id"], name: "index_model3s_on_model2_id"
  end

  create_table "new_users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "payment_type"
    t.string "card_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peaks", force: :cascade do |t|
    t.float "peak_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_peaks_on_game_id"
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "personrails", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "generate"
    t.string "devise"
    t.string "Person"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_personrails_on_email", unique: true
    t.index ["reset_password_token"], name: "index_personrails_on_reset_password_token", unique: true
  end

  create_table "physicians", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.integer "random_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sku_number"
    t.index ["sku_number"], name: "index_products_on_sku_number"
  end

  create_table "products_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "roll_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "course_type"
    t.bigint "course_id"
    t.index ["course_type", "course_id"], name: "index_students_on_course_type_and_course_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "legs"
    t.integer "top"
    t.string "material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "peak_id"
    t.index ["peak_id"], name: "index_teams_on_peak_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.string "email"
    t.string "password"
  end

  create_table "workers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "account_histories", "accounts"
  add_foreign_key "accounts", "suppliers"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "assemblies_parts", "assemblies", column: "assemblies_id"
  add_foreign_key "assemblies_parts", "parts", column: "parts_id"
  add_foreign_key "books", "authors"
  add_foreign_key "cars", "engineers"
  add_foreign_key "model3s", "model1s"
  add_foreign_key "model3s", "model2s"
  add_foreign_key "peaks", "games"
  add_foreign_key "teams", "peaks"
end
