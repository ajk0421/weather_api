API_KEY = "apiキーを入れてね"
BASE_URL = "https://api.openweathermap.org/data/2.5/weather"

require "json"
require "open-uri"

response = open(BASE_URL + "?zip=131-0041,jp&APPID=#{API_KEY}&lang=ja")
puts JSON.pretty_generate(JSON.parse(response.read))