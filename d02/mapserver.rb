require 'sinatra'
require 'httparty'


get ("/city") do
  location = request.params["city"]
  location = location.gsub(" ", "+")

  gooresponse = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?addess=#{location}&key=AIzaSyDBurh2lDleJzdr7Z2YxK_YQqXF3pnWgbM")
  lat = gooresponse["response"][0]["geometry"]["location"]["lat"]
  long = gooresponse["response"][0]["geometry"]["location"]["lng"]

  response = insta api plug in #{lat} and #{long}
  picArr = []
  response["data"].each do |x|
    picArr<<"<li><img src='#{x["images"]["standard_resolution"]}'></li>"
  end

  pics = "<div><ul>" + picArr.join('') + "</ul></div>"

  erb(:results, {locals: {tag: request.params["city"], pics: pics}})
end
