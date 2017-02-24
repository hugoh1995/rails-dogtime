require "open-uri"
require "nokogiri"

BREED = []

class Scrapper
  class << self
    def scrape_dogs
      new_arr = []

      doc = Nokogiri::HTML(open("http://dogtime.com/dog-breeds"))
      doc.search('.post-title').each do |element|
        puts element.text()

      end

    end
  end
end
