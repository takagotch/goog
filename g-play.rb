require 'open-uri'
require 'nokogiri'

url =
	'https://paly.google.com/store/apps/category/
	FINANCE/collection/topseling_paid'
doc = Nokogiri::HTML(open(url), nil, 'UTF-8')
doc.xpath("//h2/a[@class='title']").each{|item|
  puts item[:title]
}

