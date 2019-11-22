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

ActiveRecord::Schema.define(version: 20191121074910) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "addressLine1", limit: 50
    t.string   "addressLine2", limit: 50
    t.string   "addressLine3", limit: 50
    t.string   "county",       limit: 50
    t.string   "eircode",      limit: 50
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "catalog_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "logged_in",         limit: 1
    t.string   "ip_address"
    t.string   "user_agent"
    t.datetime "logged_out_at",               null: false
    t.string   "logged_out_reason"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_logins_on_user_id", using: :btree
  end

  create_table "order_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.bigint   "qty"
    t.decimal  "sale_price", precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_items_on_product_id", using: :btree
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "catalog_categories_id"
    t.integer  "supplier_id"
    t.string   "title",                 limit: 50
    t.string   "colour",                limit: 20
    t.decimal  "cost_price",                       precision: 8, scale: 2
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.index ["catalog_categories_id"], name: "index_products_on_catalog_categories_id", using: :btree
    t.index ["supplier_id"], name: "index_products_on_supplier_id", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",      limit: 50
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "suppliers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "supplier_name", limit: 50
    t.string   "addressLine1",  limit: 50
    t.string   "addressLine2",  limit: 50
    t.string   "addressLine3",  limit: 50
    t.bigint   "phone_number"
    t.string   "email",                    default: "", null: false
    t.integer  "is_deleted",    limit: 2
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "user_registrations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "first_name",    limit: 50
    t.string   "last_name",     limit: 50
    t.string   "email",                    default: "", null: false
    t.string   "password",      limit: 40
    t.bigint   "mobile_number"
    t.bigint   "phone_number"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["user_id"], name: "index_user_registrations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "role_id"
    t.string   "first_name",         limit: 50
    t.string   "last_name",          limit: 50
    t.string   "display_name"
    t.string   "email",                         default: "", null: false
    t.string   "encrypted_password", limit: 40
    t.bigint   "mobile_number"
    t.bigint   "phone_number"
    t.integer  "is_deleted",         limit: 2
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

end
