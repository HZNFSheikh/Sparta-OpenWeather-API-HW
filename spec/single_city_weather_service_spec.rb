require 'spec_helper'

describe 'Weather API test' do

  context 'testing the single city weather service ' do

    before(:all) do
      @city = Weather.new.single_city_weather
      @city.get_response
    end

    context 'Weather by city name service tests' do
          it "should have a coordinates hash" do
              expect(@city.get_coordinates_class).to be_kind_of(Hash)
          end

          it "should return longitude as a float" do
              expect(@city.get_long_class).to be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should return latitude as a float" do
              expect(@city.get_lat_class).to be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should return 2 as the number of values for coordinates" do
              expect(@city.get_coordinates_count).to eq 2
          end

          it "should return a weather Array" do
              expect(@city.get_weather_class).to be_kind_of(Array)
          end

          it "should return a weather id as an int and 3 digits" do
              expect(@city.get_weather_id).to be_kind_of(Integer)
              expect(@city.get_weather_id_length).to be 3
          end

          it "should return main weather as a string" do
              expect(@city.get_weather_main).to be_kind_of(String)
          end

          it "should return weather description as a string" do
              expect(@city.get_weather_description).to be_kind_of(String)
          end

          it "should return base as a string" do
              expect(@city.get_base).to be_kind_of(String)
          end

          it "should return main as a Hash" do
              expect(@city.get_main_class).to be_kind_of(Hash)
          end

          it "should return main with length between 5 and 7" do
              expect(@city.get_main_count).to be_between(5,7)
          end

          it "should return temperature as a Float" do
              expect(@city.get_temp).to be_kind_of(Float)
          end

          it "should return pressure as an Integer or Float" do
              expect(@city.get_pressure).to be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should return humidity as an Integer" do
              expect(@city.get_humidity).to be_kind_of(Integer)
          end

          it "should return minimum temperature as a Float" do
              expect(@city.get_min_temp).to be_kind_of(Float)
          end

          it "should return maximum temperature as a Float" do
              expect(@city.get_max_temp).to be_kind_of(Float)
          end

          it "should return sea level as a Float" do
              expect(@city.get_sea_level).to be(nil).or be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should return ground level as a Float" do
              expect(@city.get_ground_level).to be(nil).or be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should return visibility as an Integer" do
              expect(@city.get_visibility).to be_kind_of(Integer).or be(nil)
          end

          it "should have wind as a Hash" do
              expect(@city.get_wind).to be_kind_of(Hash)
          end

          it "should have wind as a Hash with 2 to 3 values" do
              expect(@city.get_wind_count).to be_between(2,3)
          end

          it "should have wind speed as a Float or Integer" do
              expect(@city.get_speed).to be_kind_of(Float).or be_kind_of(Integer)
          end

          it "should have wind degree as an Integer or Float" do
              expect(@city.get_degree).to be_kind_of(Integer).or be_kind_of(Float)
          end

          it "should have clouds as a Hash" do
              expect(@city.get_clouds).to be_kind_of(Hash)
          end

          it "should have all as an Integer" do
              expect(@city.get_all).to be_kind_of(Integer)
          end

          it "should have dt as an Integer" do
              expect(@city.get_dt).to be_kind_of(Integer)
          end

          it "should have sys as a Hash" do
              expect(@city.get_sys).to be_kind_of(Hash)
          end

          it "should have return a length of 6 from the sys Hash" do
              expect(@city.get_sys_count).to be_between(1,6)
          end

          it "should have return an integer from the type key" do
              expect(@city.get_type).to be_kind_of(Integer).or be nil
          end

          it "should have return an integer from the id key" do
              expect(@city.get_sys_id).to be_kind_of(Integer).or be nil
          end

          it "should have return a Float from the message key" do
              expect(@city.get_sys_message).to be_kind_of(Float).or be nil
          end

          it "should have return a String from the country key" do
              expect(@city.get_sys_country).to be_kind_of(String)
          end

          it "should have return an Integer from the sunrise key" do
              expect(@city.get_sys_sunrise).to be_kind_of(Integer)
          end

          it "should have return an Integer from the sunset key" do
              expect(@city.get_sys_sunset).to be_kind_of(Integer)
          end

          it "should have return an Integer from the id key in main hash" do
              expect(@city.get_id).to be_kind_of(Integer)
          end

          it "should return a string for name" do
              expect(@city.get_name).to be_kind_of(String)
          end

          it "should return an integer which from the cod key" do
              expect(@city.get_cod).to be_kind_of(Integer)
          end

        end

    end

end
