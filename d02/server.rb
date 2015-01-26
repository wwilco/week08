require 'sinatra'
require 'httparty'

get '/' do
  url = "https://api.instagram.com/v1/tags/dogs/media/recent?client_id=7d39f3274b07449f8f867a0e369226d3"
  response = HTTParty.get(url)
  urls_array = response["data"]
  erb(:index, locals:{array: urls_array})
end
