# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    data = CurrentWeatherService.new(latitude: "35.2225668", longitude: "-97.4394777", units: 'imperial').call
    @weather = Weather.new(data)
  end
end