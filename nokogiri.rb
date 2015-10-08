require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))

puts doc
puts doc.inspect		
puts doc.search("h1")				#Finds all h1 tags
puts doc.search("h1.entry-title")	#Finds all h1 tags with class entry-title
puts doc.css(".entry-title")		#Same search as above
puts doc.css(".entry-title").inner_html	#Finds just text, not tag info
puts doc.css(".entry-title").children	#Same search as above but span separates into separate lines
puts doc.css(".entry-title").children[0]#Same search as above but gets only first chunk
puts doc.title		#Gets title of webpage
puts doc.methods		#Lists all Ruby and Nokogiri methods
