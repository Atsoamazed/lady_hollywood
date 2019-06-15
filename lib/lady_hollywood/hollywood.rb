class LadyHollywood::Hollywood

attr_accessor :number, :title, :name, :summary
# This is were the scrapping code will go. #May rename this file scraper.rb


def self.ranks
  self.scrape_hollywood
end


def self.scrape_hollywood
  ranking = []
  ranking << self.scrape_list
  ranking << self.scrape_details

  ranking
end


def self.scrape_list
  doc =
  Nokogiri::HTML(open("https://www.hollywoodreporter.com/lists/50-best-female-characters-entertainment-industry-survey-results-951483/item/peggy-olson-mad-men-50-favorite-female-characters-951489"))
rank = self.new
#rank.number = doc.css("div.list-item__index").text
rank.title = doc.css("h1.list-item__title").text
rank
end

def self.scrape_details
  doc =
  Nokogiri::HTML(open("https://www.hollywoodreporter.com/lists/50-best-female-characters-entertainment-industry-survey-results-951483"))
  rank = self.new
  rank.name = doc.css("h2.list-item__deck").text.strip.gsub("Played by:", "")
  rank.summary = doc.css("div.list-item__body").text.strip.gsub("Photofest", "")
  rank
end
end
