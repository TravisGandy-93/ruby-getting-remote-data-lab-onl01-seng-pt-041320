# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize(url_string)
  end 
  
  def get_response_body
    uri = URI.parse(url_string)
    response = Net::HTTP.get_response(uri)
  	response.body
  end 
  
  def parse_json
      JSON.parse(self.get_response_body)
  end 
  
  
end 