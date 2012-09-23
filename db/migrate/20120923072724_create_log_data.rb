class CreateLogData < ActiveRecord::Migration
    def change
        create_table :log_data do |t|
            t.string :server_name
            t.string :server_spec

            t.datetime :log_time
            t.string :log_level

            t.string :req_url
            t.string :req_site

            t.integer :stat_behaviour
            t.integer :stat_search

            t.timestamps
        end
    end
end
