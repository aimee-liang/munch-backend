# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'net/http'
require 'uri'
require 'json'
def get_restaurants
  uri = URI.parse("https://developers.zomato.com/api/v2.1/search?count=20&lat=40.705138&lon=-74.014096&radius=1000&sort=real_distance&order=asc")
  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/json"
  request["User-Key"] = "7dc855cf4405df1034f62de35de0744e"

  req_options = {
    use_ssl: uri.scheme == "https",
  }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
  end

  restaurant_object = JSON.parse(response.body)


  restaurant_object["restaurants"].map do |restaurant|
    rst_name = restaurant["restaurant"]["name"]
    rst_cuisines = restaurant["restaurant"]["cuisines"]
    rst_address = restaurant["restaurant"]["location"]["address"]
    {name: rst_name, cuisines: rst_cuisines, address: rst_address}
  end

