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

ActiveRecord::Schema.define(version: 2020_04_29_175116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "borders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dimensionals", force: :cascade do |t|
    t.string "klass_type", null: false
    t.bigint "klass_id", null: false
    t.bigint "dimension_id", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "EGP", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dimension_id"], name: "index_dimensionals_on_dimension_id"
    t.index ["klass_type", "klass_id"], name: "index_dimensionals_on_klass_type_and_klass_id"
  end

  create_table "dimensions", force: :cascade do |t|
    t.float "width"
    t.float "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mats", force: :cascade do |t|
    t.string "name"
    t.string "fill_color"
    t.string "border_color"
    t.float "paddings", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "border_id", null: false
    t.bigint "mat_id"
    t.bigint "dimension_id", null: false
    t.bigint "order_id", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "EGP", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["border_id"], name: "index_order_items_on_border_id"
    t.index ["dimension_id"], name: "index_order_items_on_dimension_id"
    t.index ["mat_id"], name: "index_order_items_on_mat_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "address"
    t.string "street"
    t.string "apt"
    t.string "building"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "dimensionals", "dimensions"
  add_foreign_key "order_items", "borders"
  add_foreign_key "order_items", "dimensions"
  add_foreign_key "order_items", "mats"
  add_foreign_key "order_items", "orders"
end
