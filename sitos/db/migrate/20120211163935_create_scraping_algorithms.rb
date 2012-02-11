class CreateScrapingAlgorithms < ActiveRecord::Migration
  def change
    create_table :scraping_algorithms do |t|
      t.string :name
      t.string :maintainer

      t.timestamps
    end
  end
end
