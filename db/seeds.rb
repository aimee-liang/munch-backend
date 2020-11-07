# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'net/http'
# require 'uri'
# require 'json'
# def get_restaurants
#   uri = URI.parse("https://developers.zomato.com/api/v2.1/search?count=20&lat=40.705138&lon=-74.014096&radius=1000&sort=real_distance&order=asc")
#   request = Net::HTTP::Get.new(uri)
#   request["Accept"] = "application/json"
#   request["User-Key"] = "7dc855cf4405df1034f62de35de0744e"

#   req_options = {
#     use_ssl: uri.scheme == "https",
#   }

#   response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#     http.request(request)
#   end

#   restaurant_object = JSON.parse(response.body)


#   restaurant_object["restaurants"].map do |restaurant|
#     rst_name = restaurant["restaurant"]["name"]
#     rst_cuisines = restaurant["restaurant"]["cuisines"]
#     rst_address = restaurant["restaurant"]["location"]["address"]
#     {name: rst_name, cuisines: rst_cuisines, address: rst_address}
#   end

restaurants = Restaurant.create([{:name=>"Kung Fu Tea", :cuisines=>"Cafe, Bubble Tea, Coffee and Tea", :address=>"9 Broadway 10006"}, {:name=>"Cafe 11", :cuisines=>"Sushi, Sandwich", :address=>"11 Broadway, New York 10004"}, {:name=>"GoGo Grill", :cuisines=>"Sandwich, Mediterranean", :address=>"1 Broadway, New York 10004"}, {:name=>"Cafe Plaza Deli", :cuisines=>"Cafe, Diner", :address=>"11 Broadway, New York 10004"}, {:name=>"Starbucks", :cuisines=>"Cafe, Coffee and Tea", :address=>"1 Battery Place, New York 10004"}, {:name=>"Carvel Ice Cream", :cuisines=>"Ice Cream", :address=>"9 Broadway, New York 10004"}, {:name=>"Starbucks", :cuisines=>"Cafe, Coffee and Tea", :address=>"2 Broadway, New York 10004"}, {:name=>"Tippin Inn", :cuisines=>"American, Mexican, Sandwich", :address=>"34-13 Broadway, Queens 11106"}, {:name=>"Subway", :cuisines=>"Healthy Food, Salad", :address=>"11 Broadway, New York 10004"}, {:name=>"Stir Cafe", :cuisines=>"Cafe, American", :address=>"32 Broadway, New York 10004"}, {:name=>"Bento Nouveau", :cuisines=>"Sushi, Japanese", :address=>"32 Broadway, New York 10004"}, {:name=>"GFG Bakery Cafe", :cuisines=>"", :address=>"32 Broadway Street"}, {:name=>"Antica Ristorante", :cuisines=>"Italian", :address=>"8 Stone Street, New York 10004"}, {:name=>"Chipotle Mexican Grill", :cuisines=>"Tex-Mex", :address=>"2 Broadway Frnt 4 10004"}, {:name=>"Burger King", :cuisines=>"", :address=>"16 Beaver Street"}, {:name=>"Yogo Frozen Yogurt", :cuisines=>"Frozen Yogurt", :address=>"Location Varies, New York"}, {:name=>"Sophie's Cuban Cuisine", :cuisines=>"Cuban", :address=>"73 New Street, New York 10004"}, {:name=>"Cucina Liberta", :cuisines=>"Italian, American, Sandwich, Deli", :address=>"17 Batter Place, New York 10006"}, {:name=>"Gregorys Coffee", :cuisines=>"Cafe", :address=>"42 Broadway 10004"}, {:name=>"Yip's Restaurant", :cuisines=>"Asian, Chinese", :address=>"18 Beaver Street, New York 10004"}])


