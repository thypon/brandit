# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130610112546) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designers", :force => true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "link"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "designers_products", :id => false, :force => true do |t|
    t.integer "product_id",  :null => false
    t.integer "designer_id", :null => false
  end

  add_index "designers_products", ["product_id", "designer_id"], :name => "index_designers_products_on_product_id_and_designer_id", :unique => true

  create_table "designers_services", :id => false, :force => true do |t|
    t.integer "designer_id", :null => false
    t.integer "service_id",  :null => false
  end

  add_index "designers_services", ["designer_id", "service_id"], :name => "index_designers_services_on_designer_id_and_service_id", :unique => true

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "link"
    t.text     "description"
    t.boolean  "major"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "product_gallery_photos", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "this_file_name"
    t.string   "this_content_type"
    t.integer  "this_file_size"
    t.datetime "this_updated_at"
  end

  add_index "product_gallery_photos", ["product_id"], :name => "index_product_gallery_photos_on_product_id"

  create_table "product_styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "product_type_id"
    t.integer  "product_style_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "products", ["product_style_id"], :name => "index_products_on_product_style_id"
  add_index "products", ["product_type_id"], :name => "index_products_on_product_type_id"

  create_table "products_services", :id => false, :force => true do |t|
    t.integer "product_id", :null => false
    t.integer "service_id", :null => false
  end

  add_index "products_services", ["product_id", "service_id"], :name => "index_products_services_on_product_id_and_service_id", :unique => true

  create_table "products_shops", :id => false, :force => true do |t|
    t.integer "product_id", :null => false
    t.integer "shop_id",    :null => false
  end

  add_index "products_shops", ["product_id", "shop_id"], :name => "index_products_shops_on_product_id_and_shop_id", :unique => true

  create_table "products_showrooms", :id => false, :force => true do |t|
    t.integer "product_id",  :null => false
    t.integer "showroom_id", :null => false
  end

  add_index "products_showrooms", ["product_id", "showroom_id"], :name => "index_products_showrooms_on_product_id_and_showroom_id", :unique => true

  create_table "service_points", :force => true do |t|
    t.string   "address"
    t.text     "contacts"
    t.integer  "city_id"
    t.integer  "service_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "map_file_name"
    t.string   "map_content_type"
    t.integer  "map_file_size"
    t.datetime "map_updated_at"
  end

  add_index "service_points", ["city_id"], :name => "index_service_points_on_city_id"
  add_index "service_points", ["service_id"], :name => "index_service_points_on_service_id"

  create_table "services", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "shops", :force => true do |t|
    t.string   "address"
    t.text     "contacts"
    t.text     "description"
    t.integer  "city_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "map_file_name"
    t.string   "map_content_type"
    t.integer  "map_file_size"
    t.datetime "map_updated_at"
  end

  add_index "shops", ["city_id"], :name => "index_shops_on_city_id"

  create_table "showroom_gallery_photos", :force => true do |t|
    t.integer  "showroom_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "this_file_name"
    t.string   "this_content_type"
    t.integer  "this_file_size"
    t.datetime "this_updated_at"
  end

  add_index "showroom_gallery_photos", ["showroom_id"], :name => "index_showroom_gallery_photos_on_showroom_id"

  create_table "showrooms", :force => true do |t|
    t.string   "address"
    t.text     "contacts"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
