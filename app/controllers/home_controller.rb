# frozen_string_literal: true

require 'net/http'

class HomeController < ApplicationController
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=35.2225668&lon=-97.4394777&units=imperial&appid=0367b95e9d1aad34018fe2e844ecfd10"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end