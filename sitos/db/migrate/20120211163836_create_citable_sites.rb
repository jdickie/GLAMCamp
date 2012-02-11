class CreateCitableSites < ActiveRecord::Migration
  def change
    create_table :citable_sites do |t|
      t.string :domain
      t.string :scraping_algorithm

      t.timestamps
    end
  end
end
