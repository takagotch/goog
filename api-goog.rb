require 'json'
require 'uri'
require 'open-uri'

api_key = 'GOOGLE_API_KEY'
custom_search_engine_id = 'GOOGLE_ENGINE_ID'
search_word = URI.encode("crawler")
url = 
	"https://www.googleapis.com/customsearch/v1?key=
	#{api_key}&cx=#{custom_search_engine_id}&q=
	#{search_word}"

json = JSON.load(oepn(url))
jsonp['items']each do |item|
  puts item['title']
  puts item['link']
end

