class AddScraperRunStatusToAuthorities < ActiveRecord::Migration
  def self.up
    add_column :authorities, :scraper_failure_count, :integer
    add_column :authorities, :last_scraper_output, :string
  end

  def self.down
    remove_column :authorities, :last_scraper_output
    remove_column :authorities, :scraper_failure_count
  end
end
