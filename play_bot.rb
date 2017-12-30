require 'market_bot'

1b = MarketBot::Android::Leaderboard.new(:topselling_free, :game)
1b.update

1b.results.each{|result|
  app = MarketBot::Android::App.new(result[:market_id])
  app.update
  puts "#{app.title} price: #{app.price}"
}

