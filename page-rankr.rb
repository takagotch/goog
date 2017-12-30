require 'page_rankr'

target_url = "takagotch.com/about"

puts "link check"
puts PageRankr.backlinks(target_url, :google, :bing, :yahoo, :alexa)
puts "index check"
puts PageRankr.indexes(target_url, :google, :bing, :yahoo)
puts "rank check"
puts PageRankr.ranks(
  target_url, :alexa_us, :alexa_global, :google, :moz_rank, :page_authority)
