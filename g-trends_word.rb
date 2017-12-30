require 'open-uri'
require 'nokogiri'

atom = open('http://www.google.co.jp/trends/hotrends/atom/hourly')
doc = Nokogiri::HTML(atom)

doc.xpath("/html/body/feed/entry/content/li/span/a").each {|element|
  puts element.text
  puts element[:href]
}

