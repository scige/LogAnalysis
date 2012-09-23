class QueryController < ApplicationController
    def index
        @log_data_array = LogData.find_all_by_req_url(params[:url], :limit => 20)
        if @log_data_array.empty?
            redirect_to "/404.html"
        end
    end

    def show
        @log_data = LogData.find_by_id(params[:id])
        if nil == @log_data
            render :text => "no result"
        end
    end
end
