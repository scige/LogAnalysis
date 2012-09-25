# coding: utf-8

class QueryController < ApplicationController
    def index
        @req_originalUrl = params[:url]
        @log_data_array = LogData.find_all_by_req_originalUrl(@req_originalUrl, 
                                                              :limit => 20,
                                                              :order => "log_time DESC, server_name")
        if @log_data_array.empty?
            flash[:notice] = "没有该url的日志: " + params[:url]
            flash[:notice] += ", 请等待一段时间或查询其他url"
            redirect_to :action => "noresult"
        end
    end

    def show
        @log_data = LogData.find_by_id(params[:id])
        if nil == @log_data
            flash[:notice] = "参数错误, 没有该url的日志"
            redirect_to :action => "noresult"
        end
    end

    def noresult
    end
end
