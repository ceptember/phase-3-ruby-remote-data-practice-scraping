require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
puts doc.css(".heading-financier").text.strip

list_items = doc.css("li")

list_items.each do |li|
    puts li.text.strip
end


