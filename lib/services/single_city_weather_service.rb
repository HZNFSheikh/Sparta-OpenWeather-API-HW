require 'httparty'
require 'json'
require 'faker'

class SingleCityWeather

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?q='

  def initialize
    @api_key = 'eae6512a54d049bb30ba2408b6d98517' #add you API key here
  end

  def get_response
    # city = Faker::Address.city
    @city = JSON.parse(self.class.get("london&appid=#{@api_key}").body)
  end

  def print_result
    puts @city
  end

  def get_weather
    @city['weather']
  end

  def get_coordinates_class
        @city["coord"]
    end

    def get_coordinates_count
        @city["coord"].count
    end

    def get_long_class
        @city["coord"]["lon"]
    end

    def get_lat_class
        @city["coord"]["lat"]
    end

    def get_weather_class
        @city["weather"]
    end

    def get_weather_id
        @city["weather"][0]["id"]
    end

    def get_weather_id_length
        @city["weather"][0]["id"].to_s.length
    end

    def get_weather_main
        @city["weather"][0]["main"]
    end

    def get_weather_description
        @city["weather"][0]["description"]
    end

    def get_base
        @city["base"]
    end

    def get_main_class
        @city["main"]
    end

    def get_main_count
        @city["main"].count
    end

    def get_temp
        @city["main"]["temp"]
    end

    def get_pressure
        @city["main"]["pressure"]
    end

    def get_humidity
        @city["main"]["humidity"]
    end

    def get_min_temp
        @city["main"]["temp_min"]
    end

    def get_max_temp
        @city["main"]["temp_max"]
    end

    def get_sea_level
        @city["main"]["sea_level"]
    end

    def get_ground_level
        @city["main"]["ground_level"]
    end

    def get_visibility
        @city["visibility"]
    end

    def get_wind
        @city["wind"]
    end

    def get_wind_count
        @city["wind"].count
    end

    def get_speed
        @city["wind"]["speed"]
    end

    def get_degree
        @city["wind"]["deg"]
    end

    def get_clouds
        @city["clouds"]
    end

    def get_all
        @city["clouds"]["all"]
    end

    def get_dt
        @city["dt"]
    end

    def get_sys
        @city["sys"]
    end

    def get_sys_count
        @city["sys"].count
    end

    def get_type
        @city["sys"]["type"]
    end

    def get_sys_id
        @city["sys"]["id"]
    end

    def get_sys_message
        @city["sys"]["message"]
    end

    def get_sys_country
        @city["sys"]["country"]
    end

    def get_sys_sunrise
        @city["sys"]["sunrise"]
    end

    def get_sys_sunset
        @city["sys"]["sunset"]
    end

    def get_id
        @city["id"]
    end

    def check_id
        @city["id"]
    end

    def get_name
        @city["name"]
    end

    def get_cod
        @city["cod"]
    end

end
