class CreateLogData < ActiveRecord::Migration
    def change
        create_table :log_data do |t|
            t.string :server_name
            t.string :server_spec

            t.datetime :log_time
            t.string :log_level

            t.string :req_originalUrl
            t.string :req_site
            t.string :req_searchKey
            t.string :req_searchType
            t.boolean :req_enableThumbnail
            t.boolean :req_isItemDomain
            t.integer :req_bucketId

            t.integer :stat_behaviour_size
            t.integer :stat_search_size
            t.integer :stat_rec_hot_size
            t.integer :stat_web_hot_size
            t.integer :stat_convert_item_size
            t.integer :stat_none_item_size
            t.integer :stat_before_filter_size
            t.integer :stat_filter_sum_in_phase_0
            t.integer :stat_filter_sum_in_phase_1
            t.integer :stat_filter_sum_in_phase_2
            t.integer :stat_filter_sum_in_phase_3
            t.integer :stat_filter_sum_in_phase_4
            t.integer :stat_filter_sum_in_phase_5
            t.integer :stat_filter_sum_size
            t.integer :stat_after_filter_size
            t.integer :stat_return_size
            t.integer :stat_select_size

            t.timestamps
        end
    end
end
