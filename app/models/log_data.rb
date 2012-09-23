class LogData < ActiveRecord::Base
    attr_accessible :server_name, :server_spec
    attr_accessible :log_time, :log_level
    attr_accessible :req_url, :req_site
    attr_accessible :stat_behaviour, :stat_search
end
