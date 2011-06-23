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

ActiveRecord::Schema.define(:version => 20110623110150) do

  create_table "company_dimensions", :force => true do |t|
    t.string   "name"
    t.string   "reference"
    t.string   "industry"
    t.string   "segment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimenension_id"
    t.integer  "product_dimension_id"
    t.integer  "warehouse_dimension_id"
    t.decimal  "amount",                 :precision => 10, :scale => 0
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_transaction_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimenension_id"
    t.integer  "product_dimension_id"
    t.integer  "warehouse_dimension_id"
    t.decimal  "amount",                 :precision => 10, :scale => 0
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_dimensions", :force => true do |t|
    t.integer  "company_dimension_id"
    t.string   "name"
    t.string   "reference"
    t.string   "type"
    t.string   "source"
    t.string   "product_line"
    t.string   "classification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_master_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.string   "name"
    t.string   "reference"
    t.decimal  "price",                :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "target_facts", :force => true do |t|
    t.integer  "company_dimension_id"
    t.integer  "date_dimenension_id"
    t.string   "product_type"
    t.decimal  "target_amount",        :precision => 10, :scale => 0
    t.string   "unit_of_measure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouse_dimensions", :force => true do |t|
    t.integer  "company_dimension_id"
    t.string   "name"
    t.string   "reference"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
