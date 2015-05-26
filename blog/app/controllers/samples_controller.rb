class SamplesController < ApplicationController
   
  require 'json'
  require 'httparty'
  def new
    response = HTTParty.get('http://product-171402.apse1.nitrousbox.com/saps')
    puts response.body
  end
  ######
 # require 'open-uri'
 # def new
 #  #source = "http://product-171402.apse1.nitrousbox.com/saps"
 #  #@data = JSON.parse(source)
 #  JSON.load(open("http://product-171402.apse1.nitrousbox.com/saps"))
  #end
  # require 'net/http'
  # source = 'http://product-171402.apse1.nitrousbox.com/saps'
  # resp = Net::HTTP.get_response(URI.parse(source))
  # data = resp.body
  # result = JSON.parse(data)
  #def new
  #  source = 'http://product-171402.apse1.nitrousbox.com/saps'
   # JSON.load(open("http://product-171402.apse1.nitrousbox.com/saps"))
    #@data = JSON.parse(source)
    #response = JSON.parse(open(URI.escape(source)).read)

 # response["platforms"]
  #end
end
