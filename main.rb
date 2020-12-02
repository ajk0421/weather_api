require './ApiClients/weather_client'

#引数に郵便番号を入れる
puts ApiClients::WeatherClient.get_weather("131-0041")
