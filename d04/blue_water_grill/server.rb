require 'sinatra'

get ('/') do
  greeting = "Welcome to Blue Eyes Water Grill!"
  erb :index, locals: ({msg: "<h1>Welcome to Blue Eyes Water Grillyyy!</h2>"})
end

get '/appetizer' do
  meal = "Oysters"
  erb :index, locals: ({msg: "<p>Here are your " + meal + "</p>"})
end

get '/entree' do
  meal = "Lobster"
  erb :index, locals: ({msg: "<p>Here is your " + meal + "</p>"})
end

get '/:meal' do
  meal = params[:meal]
  erb :index, locals: ({msg: meal})
end
