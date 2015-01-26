require 'sinatra'
require 'json'

get '/salad' do
  salad = {
    name: "basic salad",
    ingredients: ["lettuce", "tomatos", "chicken", "cheese", "croutons"]
  }
  content_type :json
  salad.to_json
end
