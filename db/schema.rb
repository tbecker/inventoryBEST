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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110623201208) do

  create_table "company_dimensions", :force => true do |t|
    t.string "name"
    t.string "reference"
    t.string "industry"
    t.string "segment"
  end

  add_index "company_dimensions", ["reference"], :name => "index_company_dimensions_on_reference"

  create_table "date_dimensions", :force => true do |t|
    t.datetime "full_date"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.integer  "week"
    t.integer  "quarter"
    t.integer  "weekday"
    t.string   "week_label"
    t.string   "month_label"
    t.string   "weekday_label"
  end

  add_index "date_dimensions", ["full_date"], :name => "index_date_dimensions_on_full_date"

  create_table "inventory_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimension_id"
    t.integer  "product_dimension_id"
    t.integer  "warehouse_dimension_id"
    t.decimal  "quantity",               :precision => 10, :scale => 0
    t.decimal  "value",                  :precision => 10, :scale => 2
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_facts", ["company_dimension_id"], :name => "index_inventory_facts_on_company_dimension_id"
  add_index "inventory_facts", ["date_dimension_id"], :name => "index_inventory_facts_on_date_dimension_id"
  add_index "inventory_facts", ["product_dimension_id"], :name => "index_inventory_facts_on_product_dimension_id"
  add_index "inventory_facts", ["warehouse_dimension_id"], :name => "index_inventory_facts_on_warehouse_dimension_id"

  create_table "inventory_transaction_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimenension_id"
    t.integer  "product_dimension_id"
    t.integer  "warehouse_dimension_id"
    t.decimal  "quantity",               :precision => 10, :scale => 2
    t.decimal  "value",                  :precision => 10, :scale => 2
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_dimensions", :force => true do |t|
    t.integer "company_dimension_id"
    t.string  "name"
    t.string  "reference"
    t.string  "type"
    t.string  "source"
    t.string  "product_line"
    t.string  "classification"
    t.decimal "price",                :precision => 10, :scale => 2
  end

  add_index "product_dimensions", ["reference"], :name => "index_product_dimensions_on_reference"

  create_table "target_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimenension_id"
    t.string   "product_type"
    t.decimal  "target_quantity",      :precision => 10, :scale => 2
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouse_dimensions", :force => true do |t|
    t.integer "company_dimension_id"
    t.string  "name"
    t.string  "reference"
    t.string  "type"
  end

  add_index "warehouse_dimensions", ["reference"], :name => "index_warehouse_dimensions_on_reference"

end
