class AddColumn < ActiveRecord::Migration
  def change
      add_column :log_data, :req_ip, :string
      add_column :log_data, :stat_in_cache, :boolean
      add_column :log_data, :stat_thumbnail_size, :integer
      rename_column :log_data, :stat_return_size, :stat_candidate_size
  end
end
