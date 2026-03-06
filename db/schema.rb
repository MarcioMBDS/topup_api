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

ActiveRecord::Schema[8.1].define(version: 2026_02_25_150511) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "benefits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "customer_activated_at"
    t.string "customer_id"
    t.string "external_id"
    t.bigint "order_id", null: false
    t.integer "product_amount"
    t.string "product_id"
    t.string "product_name"
    t.string "product_unit"
    t.string "provider_reference"
    t.string "recipient"
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_benefits_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "external_id"
    t.string "status"
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "amount_in_cents"
    t.datetime "created_at", null: false
    t.string "external_id"
    t.bigint "order_id", null: false
    t.string "payment_type"
    t.string "status"
    t.datetime "updated_at", null: false
    t.string "wallet"
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  add_foreign_key "benefits", "orders"
  add_foreign_key "payments", "orders"
end
