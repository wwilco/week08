require 'pry'
require 'sinatra'
require 'json'
require 'httparty'

get '/' do
  url = "http://api.randomuser.me/"
  response = HTTParty.get(url)
  person = response["results"][0]["user"]
  person_json = {
    first: person["name"]["first"],
    last: person["name"]["last"],
    email: person["email"],
    username: person["username"]
  }
  content_type :json
  person_json.to_json
end

# require 'sinatra'
# require 'httparty'
# require 'pry'
#
# get '/' do
#   url = "http://api.randomuser.me/"
#   response = HTTParty.get(url)
#   console.log(response)
#   person = response["results"][0]["user"] #could also use ["results"].first
#
#   person_json = {
#     first: person["name"]["first"],
#     last: person["name"]["last"],
#     email: person["email"],
#     username: person["username"]
#   }
#   content_type :json
#   person_json.to_json
#
# end

# binding.pry

# #your first API!
# require 'pry'
# require 'sinatra'
# require 'json' #depends on the sinatra server
#
# get '/' do
#   content_type :json #lets the computer know what type of file you'll be working with
#   data = {msg: "hello worldz"}
#   data.to_json
# end
#
# get '/top_theatres' do
#   content_type :json
#   data = ["Ace Ventura", "Dumb and Dumber", "The Mask"]
#   data.to_json
# end
#
# get '/top_dvd' do
#   content_type :json
#   data = { "results"=> [ {"Jurassic Park"=> 9}, {"Superman"=> 2}, {"Inception"=> 8} ]}
#   data.to_json
# end
