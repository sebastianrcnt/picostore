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

ActiveRecord::Schema.define(version: 2022_03_25_162255) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "membership_promotion_codes", force: :cascade do |t|
    t.integer "membership_id"
    t.string "code"
    t.integer "quantity"
    t.integer "used_quantity"
    t.integer "discount_type"
    t.float "discount_rate"
    t.integer "discount_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "membership_subscription_payments", force: :cascade do |t|
    t.integer "membership_subscription_id"
    t.integer "payment_id"
    t.datetime "purchase_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "membership_subscriptions", force: :cascade do |t|
    t.integer "membership_id"
    t.integer "membership_tier_id"
    t.integer "membership_promotion_code_id"
    t.datetime "next_purchase_time"
    t.string "payment_period"
    t.string "integer"
    t.integer "price_per_period"
    t.boolean "active"
    t.integer "subscriber_id"
    t.string "subscriber_email"
    t.string "subscriber_initial_password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "membership_tiers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "payment_period"
    t.integer "membership_id"
    t.integer "monthly_price"
    t.integer "monthly3_price"
    t.integer "monthly6_price"
    t.integer "yearly_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "default_tier_id"
    t.boolean "creates_license_key"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "pg"
    t.string "pay_method"
    t.string "merchant_pid"
    t.string "name"
    t.integer "amount"
    t.string "buyer_email"
    t.string "buyer_name"
    t.string "buyer_tel"
    t.string "buyer_addr"
    t.string "buyer_postcode"
    t.string "imp_uid"
    t.boolean "is_amount_validated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payouts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "amount"
    t.boolean "done"
    t.datetime "starts_from"
    t.datetime "ends_at"
    t.datetime "paid_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_order_payments", force: :cascade do |t|
    t.integer "product_order_id"
    t.integer "payment_id"
    t.datetime "purchase_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "product_tier_id"
    t.integer "product_promotion_code_id"
    t.integer "quantity"
    t.integer "price"
    t.integer "orderer_id"
    t.string "orderer_email"
    t.string "orderer_initial_password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_promotion_codes", force: :cascade do |t|
    t.integer "product_id"
    t.string "code"
    t.integer "quantity"
    t.integer "used_quantity"
    t.integer "discount_type"
    t.float "discount_rate"
    t.integer "discount_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_tiers", force: :cascade do |t|
    t.string "name"
    t.integer "product_id"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "default_tier_id"
    t.boolean "creates_license_key"
    t.integer "price"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_hash"
    t.boolean "is_email_verified"
    t.integer "authentication_strategy_type"
    t.string "payback_bank"
    t.string "payback_bank_account"
    t.integer "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
