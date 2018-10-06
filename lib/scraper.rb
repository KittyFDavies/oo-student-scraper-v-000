require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    hash_ary_all = []
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = doc.css(".roster-cards-container .student-card")
    students.each do |student|
      hash = {:name => student.css(".card-text-container h4").text, :location => student.css(".card-text-container p").text, :profile_url => student.css("@href").first.value}
      hash_ary_all << hash
      #binding.pry
    end
    hash_ary_all
  end

  def self.scrape_profile_page(profile_url)
    hash_ary_single = {}
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    :twitter =>
    :linkedin =>
    :github =>
    :blog =>
    :profile_quote =>
    :bio =>
    #hash = {:name => doc.css(".vitals-containter .vitals-text-container").text}
    #hash_ary_single << hash
    #binding.pry
    hash_ary_single
  end

end
