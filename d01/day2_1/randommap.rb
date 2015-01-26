require 'pry'
# require 'sinatra'
require 'json'
require 'httparty'


url = "http://api.randomuser.me/"
response = HTTParty.get(url)
finder = response["results"][0]["user"]["location"]
finder_json = {
  city: finder["city"],
  state: finder["state"]
}
city2 = finder_json[:city]
xxx = city2.gsub(" ", "+")
puts finder_json

goomap = "https://maps.googleapis.com/maps/api/geocode/json?address=#{xxx}&key=AIzaSyDBurh2lDleJzdr7Z2YxK_YQqXF3pnWgbM"
response2 = HTTParty.get(goomap)
finder2 = response2["results"][0]["geometry"]["location"]
finder2_json = {
  lati: finder2["lat"],
  long: finder2["lng"]
}

puts finder2_json
