class CreateScrapingElements < ActiveRecord::Migration
  def change
    create_table :scraping_elements do |t|
      t.integer :scraping_algorithm_id
      t.string :marc_key
      t.string :hash_key

      t.timestamps
    end
  end
end
