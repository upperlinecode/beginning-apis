require 'httparty'
require 'json'
require 'pry'

response = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC')
puts response.body, response.code, response.message, response.headers.inspect

parsed_response = JSON.parse(response.body)

parsed_response

binding.pry
