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

ActiveRecord::Schema.define(version: 2020_12_10_170857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_emails_on_user_id"
  end

  create_table "order_lists", force: :cascade do |t|
    t.integer "count"
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_lists_on_order_id"
    t.index ["product_id"], name: "index_order_lists_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.money "full_price", scale: 2
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "outlet_lists", force: :cascade do |t|
    t.integer "count"
    t.money "price", scale: 2
    t.bigint "outlet_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outlet_id"], name: "index_outlet_lists_on_outlet_id"
    t.index ["product_id"], name: "index_outlet_lists_on_product_id"
  end

  create_table "outlets", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "phone"
    t.string "operator"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "product_attrs", force: :cascade do |t|
    t.string "title"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "value"
    t.index ["product_id"], name: "index_product_attrs_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.string "image"
    t.string "status"
    t.index ["category_id"], name: "index_users_on_category_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "storehouses", force: :cascade do |t|
    t.integer "count"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_storehouses_on_product_id"
  end

  create_table "supplier_lists", force: :cascade do |t|
    t.money "price", scale: 2
    t.integer "count"
    t.string "number_doc"
    t.integer "guarantee"
    t.bigint "product_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_supplier_lists_on_product_id"
    t.index ["supplier_id"], name: "index_supplier_lists_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "title"
    t.date "date_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id", null: false
    t.bigint "address_id", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "admin", default: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "emails", "users"
  add_foreign_key "order_lists", "orders"
  add_foreign_key "order_lists", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "outlet_lists", "outlets"
  add_foreign_key "outlet_lists", "products"
  add_foreign_key "phones", "users"
  add_foreign_key "product_attrs", "products"
  add_foreign_key "storehouses", "products"
  add_foreign_key "supplier_lists", "products"
  add_foreign_key "supplier_lists", "suppliers"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "roles"
end
