class SampleController < ApplicationController
  require 'httparty'
  require 'json'
  def new
  response = HTTParty.get('http://product-171402.apse1.nitrousbox.com/saps')
    @sample = JSON.parse(response.body)
  end
end
