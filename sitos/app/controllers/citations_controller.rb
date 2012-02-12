class CitationsController < ApplicationController
  def get_citation_info_by_domain
    site = CitableSite.find_by_domain(params[:domain])
    @marc_tags = {}
    site.scraping_algorithm.scraping_elements.each {|e|
      @marc_tags[e.marc_key] = e.hash_key
    }
  end
  def get_citation_pattern_by_language
    @pattern = CitationTemplate.find_by_domain(params[:lang]+'.wikipedia.org') # TODO: un-hardcode
  end
end
