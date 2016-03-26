require 'net/http'
require 'JSON'
require 'colorize'



url = URI('https://api.coindesk.com/v1/bpi/currentprice.json')
json = Net::HTTP.get(url)
hash = JSON.parse(json)
puts " "
puts " "
puts "**********************".colorize(:blue)
puts "BITCOIN EXCHANGE RATE".colorize(:blue)
puts "**********************".colorize(:blue)
puts " "
puts "1 BitCoin = #{hash['bpi']['USD']['rate_float']} #{hash['bpi']['USD']['code']}".colorize(:cyan)
puts "Time = #{hash['time']['updated']}".colorize(:cyan)
puts " "
puts "**********************".colorize(:blue)
puts hash['disclaimer'].colorize(:blue)
puts " "
puts " "
puts " "