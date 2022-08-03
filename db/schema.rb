# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_03_124007) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "country"
    t.string "postal_code"
    t.string "city"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "flowers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "join_table_flowers_carts", force: :cascade do |t|
    t.integer "cart_id", null: false
    t.integer "flowers_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quantity"
    t.index ["cart_id"], name: "index_join_table_flowers_carts_on_cart_id"
    t.index ["flowers_id"], name: "index_join_table_flowers_carts_on_flowers_id"
  end

  create_table "join_table_flowers_orders", force: :cascade do |t|
    t.integer "flower_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flower_id"], name: "index_join_table_flowers_orders_on_flower_id"
    t.index ["order_id"], name: "index_join_table_flowers_orders_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "cart_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_orders_on_cart_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "carts", "users"
  add_foreign_key "join_table_flowers_carts", "carts"
  add_foreign_key "join_table_flowers_carts", "flowers", column: "flowers_id"
  add_foreign_key "join_table_flowers_orders", "flowers"
  add_foreign_key "join_table_flowers_orders", "orders"
  add_foreign_key "orders", "carts"
end
