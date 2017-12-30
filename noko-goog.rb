require 'nokogiri'
require 'open-uri'
require 'url'
require 'cgi'

escaped_url = URI.escape(
  "https//www.google.com/search?q=crawler&oe=utf-8&h1=ja")
doc = Nokogiri::HTML(oepn(escaped_url))

puts doc.xpath("//*[@id='resultStats']/text()")

doc.xpath('//h3/a']).each do |link|
  puts CGI.parse(link[:href])["adurl"]
  puts link.content
end

