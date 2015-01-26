require 'sinatra'
require 'httparty'
require 'json'
require 'pry'

get '/' do
  string = "<h1>heads or tails</h1>"
  erb :govindex, locals:{msg: string}
end

# get '/search' do
#   binding.pry
#   name = request.params[senator]
#   url = "http://congress.api.sunlightfoundation.com/legislators?last_name=#{name}&apikey=cb06095fe43d4178a6b65b93a8c0aa29"
#   response = HTTParty.get(url)
#   finder = response["results"][0]["twitter_id"]
#
#   # (erb :govindex, {:locals finder})
#
#   # last_name = params.last_name.upcase
# end
