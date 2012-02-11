class ScrapingAlgorithm < ActiveRecord::Base
  has_many :citable_sites
  has_many :scraping_elements
end
