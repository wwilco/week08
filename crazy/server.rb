require 'sinatra'
require 'httparty'
require 'pry'
require 'json'

get ("/") do
  erb :index
end

get '/search' do
  name = params['senator']
  url = "http://congress.api.sunlightfoundation.com/legislators?last_name=#{name}&apikey=cb06095fe43d4178a6b65b93a8c0aa29"
  response = HTTParty.get(url)
  finder = response["results"][0]["twitter_id"]

  (erb :index2, {locals: {finder:finder}})

end
