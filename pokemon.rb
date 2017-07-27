
require 'httparty'
require 'pry'

url = "http://pokeapi.co/api/v2/type/3"
response= HTTParty.get url
a= response.parsed_response["pokemon"]
#a['pokemon'].map {|p| p['pokemon']['name']}

i= a.length
j=0

while j < i do
    x= a[j]
    k = x['pokemon']
    puts k['name']
    j= j+1
    
end
