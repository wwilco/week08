require 'sinatra'
require 'httparty'
require 'pry'


url = "http://localhost:3000/animals"
request = HTTParty.get(url)


puts "pick an animal!"
# binding.pry

pick = gets.chomp
request.each do |key, value|
  if pick != key
    puts "No information for that animal was found"
  else
    puts "#{key} #{value}"
  end
end
