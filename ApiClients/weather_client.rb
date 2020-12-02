require "json"
require "open-uri"
require 'pry'
require 'dotenv/load'

module ApiClients
  class WeatherClient
    BASE_URL = "https://api.openweathermap.org/data/2.5/weather"

    class << self
      def get_weather(zip)
        params = base_params + "&zip=#{zip},jp"

        response = open(BASE_URL + params)
        JSON.parse(response.read)
      end

      private

        def base_params
          "?APPID=#{ENV['API_KEY']}&lang=ja"
        end
    end
  end
end