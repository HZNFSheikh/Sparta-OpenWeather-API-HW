require_relative 'services/single_city_weather_service.rb'

class Weather

  def single_city_weather
    SingleCityWeather.new
  end

end

# superClass = Weather.new
#
# city = superClass.single_city_weather
#
# city.get_response
# city.print_result

# city.print_result
