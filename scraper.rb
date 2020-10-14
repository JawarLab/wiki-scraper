require "mechanize"

class WikiScraper
  URL = "https://en.wikipedia.org/wiki/List_of_polar-ring_galaxies"

  def initialize
    @agent = Mechanize.new
  end

  def scrape
    page = @agent.get(URL)
  end
end

puts WikiScraper.new.scrape
