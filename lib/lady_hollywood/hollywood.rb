class LadyHollywood::Hollywood

attr_accessor :number, :name, :title, :summary, :show, :movie
# This is were the scrapping code will go. #May rename this file scraper.rb

# scrape data into two arrays one for shows one for movies
# second level -- scrape more details to include overall
# ranking for show/movie on the top ranking list or more information on the actress.


def self.ranks
  self.scrape_hollywood
end


def self.scrape_hollywood
  ranking = []
  ranking << self.scrape_list

  ranking
end


def self.scrape_list
  doc =
  Nokogiri::HTML(open("https://www.hollywoodreporter.com/lists/50-best-female-characters-entertainment-industry-survey-results-951483/item/peggy-olson-mad-men-50-favorite-female-characters-951489"))
rank = self.new
rank.number = doc.css("div.list-item__index").text
rank.name = doc.css("h2.list-item__deck").text
#rank.actress = doc.css("").text
rank.title = doc.css("h1.list-item__title").text
rank.summary = doc.css("div.list-item__body").text
rank
end
end
