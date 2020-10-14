require "nokogiri"
require "mechanize"

class WikiScraper
  URL = "https://en.wikipedia.org/wiki/List_of_nearest_galaxies"

  def initialize
    @agent = Mechanize.new
  end

  def scrape
    @agent.get(URL)
  end
end

scrape = WikiScraper.new.scrape

puts scrape.body
