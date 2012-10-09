class CreateIndex < ActiveRecord::Migration
  def up
      add_index :log_data, :log_time
      add_index :log_data, :req_site
      add_index :log_data, :req_originalUrl
  end

  def down
      remove_index :log_data, :log_time
      remove_index :log_data, :req_site
      remove_index :log_data, :req_originalUrl
  end
end
