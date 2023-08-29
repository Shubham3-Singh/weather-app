class WeatherController < ApplicationController
  before_action :authenticate_admin
  require 'open-uri'
  require 'json'

  def index
    if params[:city_names].present?
      url = "https://api.openweathermap.org/data/2.5/weather?q=#{params[:city_names]},MH,IN&appid=f5a06e041c768bf47619a35d85d82fd0"
      response = JSON.parse(open(url).read)
      @temp_min = (response['main']['temp_min'] - 273.15).round(2)
      @temp_max = (response['main']['temp_max'] - 273.15).round(2)
      @humidity = response['main']['humidity']
      @wind_speed = response['wind']['speed']
      @weather_main = response['weather'].first['main']
      @weather_desc = response['weather'].first['description']
      @city = response['name']
    end
  end
end
