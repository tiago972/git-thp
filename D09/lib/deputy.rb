require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

def get_congressman_email(congressman_url)
	hash_congressman = {}
	doc = Nokogiri::HTML(open(congressman_url))
	hash_congressman[:first_name] = doc.xpath('//h1').text.split[1]
	hash_congressman[:last_name] = doc.xpath('//h1').text.split[2]
	hash_congressman[:email] = doc.xpath('//dl[@class="deputes-liste-attributs"]//dd[4]//ul//li[1]//a//@href').text.gsub!(/mailto:/, "")
	return hash_congressman
end


def get_congressman_url
	array_congressmen = []
	page = "http://www2.assemblee-nationale.fr"
	doc = Nokogiri::HTML(open(page + "/deputes/liste/alphabetique"))
	doc.xpath('//div[@id="deputes-list"]//div[@class="clearfix col-container"]//a//@href').each do |node|
		array_congressmen << get_congressman_email(page + node)
		#puts array_congressmen
		#binding.pry
	end
	return array_congressmen
end

