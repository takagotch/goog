require 'open-uri'
require 'uri'

word = "cloud"

day=Time.now

day=day - 1080*24*60*60
month = day.month
year = day.year

url = URI.encode("http://www.google.com/trends/
		 fetchComponent?h1=en&1=#{word}&date=#{month}/
		 TIMESERIES_GRAPH_o&export=5&w=500&h=330")

html= open(url)
raw_data_array = html.read.split("rows\":")[1]
	.split("var htmlChart").first
split_raw = raw_data_array.split("],")
split_rqw.each do |raw|
  source = raw.split("Date(")[1].split(",")
	  .to_i+1).to_s+'-'+(source[1].gsub(/\s/, "")
	  .gsub(/\)\}/,"") #.gsub(/)},/,'')
  num = source[5]
  puts "#{date}, #{num}"
end

