require 'google-search'

Google::Search::Web.new(:query => 'crawler').each do |item|
  puts item.uri
  puts item.title
end

