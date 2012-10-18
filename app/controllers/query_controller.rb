# coding: utf-8

class QueryController < ApplicationController
    def index
        @req_originalUrl = params[:url]
        @log_data_array = LogData.find_all_by_req_originalUrl(@req_originalUrl, 
                                                              :limit => 20,
                                                              :order => "log_time DESC, server_name")
        if @log_data_array.empty?
            flash[:notice] = "没有该url的日志: " + @req_originalUrl
            flash[:notice] += ", 请等待一段时间或查询其他url"
            redirect_to :controller => "home", :action => "index"
        end
    end

    def site
        @req_site = params[:site]
        @log_data_array = LogData.find_all_by_req_site(@req_site, 
                                                       :limit => 50,
                                                       :order => "log_time DESC")
        if @log_data_array.empty?
            flash[:notice] = "没有该site的日志: " + @req_site
            flash[:notice] += ", 请等待一段时间或查询其他url"
            redirect_to :controller => "home", :action => "index"
        end
    end

    def show
        @log_data = LogData.find_by_id(params[:id])
        if nil == @log_data
            flash[:notice] = "参数错误, 没有该url的日志"
            redirect_to :controller => "home", :action => "index"
        end
    end
end
