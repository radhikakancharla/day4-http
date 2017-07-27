
require 'httparty'
require 'pry'

p 'please enter a number'
str= gets

url = "https://www.google.com/finance/getprices?q=#{str.chomp.upcase}&x=NASD&i=120&p=25m&f=d,c,v,o,h,l&df=cpct&auto=1&ts=1501179683973&ei=vCl6WbGZHNSP2Abo3KPoDg"

while true do
    response= HTTParty.get url
    a= response.parsed_response
    b= a.split
    k=b[b.length-1]
    output = k.split(',')
    #p "price of stock #{str.chomp} is"
    p output[4]
    sleep(5)
end