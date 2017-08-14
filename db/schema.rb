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

ActiveRecord::Schema.define(version: 20170814114505) do

  create_table "multicast_presets", force: :cascade do |t|
    t.string   "description"
    t.string   "from"
    t.string   "from_name"
    t.string   "reply_to"
    t.string   "preview_to"
    t.string   "subject"
    t.integer  "body_template_id"
    t.boolean  "with_attachment"
    t.integer  "attachment_template_id"
    t.boolean  "pdf_convertion"
    t.boolean  "pdf_with_password"
    t.string   "pdf_password_template"
    t.integer  "cost_centre_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["attachment_template_id"], name: "index_multicast_presets_on_attachment_template_id"
    t.index ["body_template_id"], name: "index_multicast_presets_on_body_template_id"
    t.index ["cost_centre_id"], name: "index_multicast_presets_on_cost_centre_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "store_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["store_id"], name: "index_stocks_on_store_id"
  end

  create_table "store_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "site"
    t.integer  "tipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
    t.index ["tipo_id"], name: "index_stores_on_tipo_id"
  end

end
