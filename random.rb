require 'httparty'
require 'pry'


p 'please enter a number'
y= gets
url = "https://qrng.anu.edu.au/API/jsonI.php?length=#{y}&type=uint16"
p url

response= HTTParty.get url
a= response["data"]
p a
p a.sum/a.size

# binding.pry
# x=3