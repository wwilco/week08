require 'sinatra'
require 'httparty'
require 'pry'
require 'json'

get ("/") do
  erb :index
end

get '/:lat/:long' do
  obj = {
    latitude: params[:lat],
    longitude: params[:long]
  }

  (erb :index, locals: {obj: obj})

end

# Adam's method
# (erb :index, locals: {lat: params[:lat], long: params[:long]})


  # latx = params[:lat]
  # longx = params[:long]

  # url = "https://maps.googleapis.com/maps/api/geocode/json?addess="
  # #{latx},#{longx}&key=AIzaSyDBurh2lDleJzdr7Z2YxK_YQqXF3pnWgbM"
  # response = HTTParty.get(url)
  #
  # latx = response["results"][0]["geometry"]["location"]["lat"]
  # longx = response["results"][0]["geometry"]["location"]["lng"]

  # (erb :index, locals: {latx: latx, longx:longx})
