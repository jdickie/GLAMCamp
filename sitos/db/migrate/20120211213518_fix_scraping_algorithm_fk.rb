class FixScrapingAlgorithmFk < ActiveRecord::Migration
  def up
     add_column :citable_sites, :scraping_algorithm_id, :int
     remove_column :citable_sites, :scraping_algorithm
  end

  def down
    add_column :citable_sites, :scraping_algorithm, :string
    remove_column :citable_sites, :scraping_algorithm_id
  end
end
