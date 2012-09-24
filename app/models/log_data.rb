class LogData < ActiveRecord::Base
    attr_accessible :server_name, :server_spec

    attr_accessible :log_time, :log_level

    attr_accessible :req_originalUrl, :req_site
    attr_accessible :req_searchKey, :req_searchType
    attr_accessible :req_enableThumbnail, :req_isItemDomain
    attr_accessible :req_bucketId

    attr_accessible :stat_behaviour_size, :stat_search_size
    attr_accessible :stat_rec_hot_size, :stat_before_filter_size
    attr_accessible :stat_filter_sum_in_phase_0, :stat_filter_sum_in_phase_1
    attr_accessible :stat_filter_sum_in_phase_2, :stat_filter_sum_in_phase_3
    attr_accessible :stat_filter_sum_in_phase_4, :stat_filter_sum_in_phase_5
    attr_accessible :stat_filter_sum_size, :stat_after_filter_size
    attr_accessible :stat_return_size, :stat_select_size
end
