# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LogData.create(
    :server_name => "Demo",
    :server_spec => "10.249.7.16:19092",
    :log_time => "2012-09-23 15:47:00",
    :log_level => "INFO",
    :req_originalUrl => "http://www.meishichina.com",
    :req_site => "www.meishichina.com",
    :stat_behaviour_size => 20,
    :stat_search_size => 60
)

LogData.create(
    :server_name => "Demo",
    :server_spec => "10.249.7.16:19092",
    :log_time => "2012-09-23 15:48:00",
    :log_level => "INFO",
    :req_originalUrl => "http://www.sina.com.cn",
    :req_site => "www.sina.com.cn",
    :stat_behaviour_size => 20,
    :stat_search_size => 60
)

LogData.create(
    :server_name => "Demo",
    :server_spec => "10.249.7.16:19092",
    :log_time => "2012-09-23 15:49:00",
    :log_level => "INFO",
    :req_originalUrl => "http://www.chinaz.com",
    :req_site => "www.chinaz.com",
    :stat_behaviour_size => 20,
    :stat_search_size => 60
)

LogData.create(
    :server_name => "SBS",
    :server_spec => "10.249.88.1:19092",
    :log_time => "2012-09-23 19:32:00",
    :log_level => "INFO",
    :req_originalUrl => "http://www.meishichina.com",
    :req_site => "www.meishichina.com",
    :stat_behaviour_size => 20,
    :stat_search_size => 60
)

