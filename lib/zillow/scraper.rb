require 'Nokogiri'

class Scraper
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def self.html_to_hash(url)
    html = Nokogiri::HTML(open(url))

  end

end
