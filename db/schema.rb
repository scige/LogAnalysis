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

ActiveRecord::Schema.define(:version => 20121011104958) do

  create_table "log_data", :force => true do |t|
    t.string   "server_name"
    t.string   "server_spec"
    t.datetime "log_time"
    t.string   "log_level"
    t.string   "req_originalUrl"
    t.string   "req_site"
    t.string   "req_searchKey"
    t.string   "req_searchType"
    t.boolean  "req_enableThumbnail"
    t.boolean  "req_isItemDomain"
    t.integer  "req_bucketId"
    t.integer  "stat_behaviour_size"
    t.integer  "stat_search_size"
    t.integer  "stat_rec_hot_size"
    t.integer  "stat_web_hot_size"
    t.integer  "stat_convert_item_size"
    t.integer  "stat_none_item_size"
    t.integer  "stat_before_filter_size"
    t.integer  "stat_filter_sum_in_phase_0"
    t.integer  "stat_filter_sum_in_phase_1"
    t.integer  "stat_filter_sum_in_phase_2"
    t.integer  "stat_filter_sum_in_phase_3"
    t.integer  "stat_filter_sum_in_phase_4"
    t.integer  "stat_filter_sum_in_phase_5"
    t.integer  "stat_filter_sum_size"
    t.integer  "stat_after_filter_size"
    t.integer  "stat_candidate_size"
    t.integer  "stat_select_size"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "req_ip"
    t.boolean  "stat_in_cache"
    t.integer  "stat_thumbnail_size"
  end

  add_index "log_data", ["log_time"], :name => "index_log_data_on_log_time"
  add_index "log_data", ["req_originalUrl"], :name => "index_log_data_on_req_originalUrl"
  add_index "log_data", ["req_site"], :name => "index_log_data_on_req_site"

end
