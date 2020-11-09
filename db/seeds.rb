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

# uri = URI.parse("https://developers.zomato.com/api/v2.1/search?count=20&lat=40.705138&lon=-74.014096&radius=1000&sort=real_distance&order=asc")
# request = Net::HTTP::Get.new(uri)
# request["Accept"] = "application/json"
# request["User-Key"] = "7dc855cf4405df1034f62de35de0744e"

# req_options = {
#     use_ssl: uri.scheme == "https",
# }

# response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#     http.request(request)
# end

# restaurant_object = JSON.parse(response.body)


# restaurant_object["restaurants"].map do |restaurant|
#     rst_name = restaurant["restaurant"]["name"]
#     rst_zomato_id = restaurant["restaurant"]["id"].to_i
#     rst_cuisines = restaurant["restaurant"]["cuisines"]
#     rst_address = restaurant["restaurant"]["location"]["address"]
#     rst_zip = restaurant["restaurant"]["location"]["zipcode"]
#     rst_photos_url = restaurant["restaurant"]["photos_url"]
#     {name: rst_name, zomato_id: rst_zomato_id, cuisines: rst_cuisines.split(", "), address: rst_address, zip: rst_zip, photos_url: rst_photos_url}
# end


Restaurant.destroy_all

restaurants = Restaurant.create([
    {:name=>"Kung Fu Tea", :zomato_id=>18078401, :cuisines=>"Cafe, Bubble Tea, Coffee and Tea", :address=>"9 Broadway 10006", :zip=>"10006", :photos_url=>"https://www.zomato.com/new-york-city/kung-fu-tea-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Cafe 11", :zomato_id=>17763265, :cuisines=>"Sushi, Sandwich", :address=>"11 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/cafe--lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"GoGo Grill", :zomato_id=>16791522, :cuisines=>"Sandwich, Mediterranean", :address=>"1 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/gogo-grill-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Cafe Plaza Deli", :zomato_id=>16761794, :cuisines=>"Cafe, Diner", :address=>"11 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/cafe-plaza-deli-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Starbucks", :zomato_id=>16778055, :cuisines=>"Cafe, Coffee and Tea", :address=>"1 Battery Place, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/starbucks-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Carvel Ice Cream", :zomato_id=>17817867, :cuisines=>"Ice Cream", :address=>"9 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/carvel-ice-cream-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Starbucks", :zomato_id=>16778115, :cuisines=>"Cafe, Coffee and Tea", :address=>"2 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/starbucks-4-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Tippin Inn", :zomato_id=>16787262, :cuisines=>"American, Mexican, Sandwich", :address=>"34-13 Broadway, Queens 11106", :zip=>"11106", :photos_url=>"https://www.zomato.com/new-york-city/tippin-inn-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Subway", :zomato_id=>16778389, :cuisines=>"Healthy Food, Salad", :address=>"11 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/subway-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Stir Cafe", :zomato_id=>16778303, :cuisines=>"Cafe, American", :address=>"32 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/stir-cafe-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Bento Nouveau", :zomato_id=>16790368, :cuisines=>"Sushi, Japanese", :address=>"32 Broadway, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/bento-nouveau-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"GFG Bakery Cafe", :zomato_id=>18916089, :cuisines=>"", :address=>"32 Broadway Street", :zip=>"", :photos_url=>"https://www.zomato.com/new-york-city/gfg-bakery-cafe-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Antica Ristorante", :zomato_id=>16759362, :cuisines=>"Italian", :address=>"8 Stone Street, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/antica-ristorante-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Chipotle Mexican Grill", :zomato_id=>16762956, :cuisines=>"Tex-Mex", :address=>"2 Broadway Frnt 4 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/chipotle-mexican-grill-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Burger King", :zomato_id=>18910795, :cuisines=>"", :address=>"16 Beaver Street", :zip=>"", :photos_url=>"https://www.zomato.com/new-york-city/burger-king-3-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Yogo Frozen Yogurt", :zomato_id=>16788197, :cuisines=>"Frozen Yogurt", :address=>"Location Varies, New York", :zip=>"", :photos_url=>"https://www.zomato.com/new-york-city/yogo-frozen-yogurt-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Sophie's Cuban Cuisine", :zomato_id=>16777842, :cuisines=>"Cuban", :address=>"73 New Street, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/sophies-cuban-cuisine-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Cucina Liberta", :zomato_id=>18078543, :cuisines=>"Italian, American, Sandwich, Deli", :address=>"17 Batter Place, New York 10006", :zip=>"10006", :photos_url=>"https://www.zomato.com/new-york-city/cucina-liberta-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Gregorys Coffee", :zomato_id=>17763834, :cuisines=>"Cafe", :address=>"42 Broadway 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/gregorys-coffee-1-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"}, 
    {:name=>"Yip's Restaurant", :zomato_id=>16781230, :cuisines=>"Asian, Chinese", :address=>"18 Beaver Street, New York 10004", :zip=>"10004", :photos_url=>"https://www.zomato.com/new-york-city/yips-restaurant-lower-manhattan/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop"},
    
])



