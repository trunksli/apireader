require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rss/1.0'
require 'rss/2.0'

#url = "http://www.walmart.com/search/search-ng.do?search_constraint=0&ic=48_0&search_query=Batman&Find.x=0&Find.y=0&Find=Find"
#doc = Nokogiri::HTML(open(url))
#doc.css(".item").each do |item|
#    text = item.at_css(".ListItemLink").text
#    price = item.at_css(".camelPrice").text[/\$[0-9\.]+/]
#	puts "#{text} - #{price}"

#url = "http://www.nytimes.com/most-popular"
#doc = Nokogiri::HTML(open(url))
#doc.css(".item").each do |item|
#    item = item.at_css("").item
#    puts "done"
#    puts "#{item}"
#end


def skimrss(link) #method to process rss fead
	source = link
	content=""
	open(source) do |s|
	  content = s.read
	end
	return rss.items[0].title, rss.items[0].link, rss.items[0].description, rss.items[0].date
	rss = RSS::Parser.parse(content,false)
	print "RSS title: ", rss.channel.title, "\n"
	print "title of first item: ", rss.items[0].title, "\n"
	print "link of first item: ", rss.items[0].link, "\n"
	print "description of first items: ", rss.items[0].description, "\n"
	print "date of first items: ", rss.items[0].date, "\n"
end

a = "http://www.nytimes.com/services/xml/rss/nyt/pop_top.xml"
skimrss(a)

source = "http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml"
content=""

puts "List of All Popular Items of Boxed:"
output_array.push("Most Popular Items List:")
popular_items_boxed = Array.new
popular_items_boxed = popularsort(uniquestrip(orders))
popular_items_boxed.each do |productitem|
	output_array.push("#{productitem[0]}, #{productitem[1]}")
	print productitem.join(":") + ", "
end



url = "http://www.nytimes.com/"
#doc = Nokogiri::HTML(open(url))
#doc.css(".item").each do |item|
#    text = item.at_css(".ListItemLink").text
#    price = item.at_css(".camelPrice").text[/\$[0-9\.]+/]
#	puts "#{text} - #{price}"

#url = "http://www.nytimes.com/most-popular"
#doc = Nokogiri::HTML(open(url))
#doc.css(".item").each do |item|
#    item = item.at_css("").item
#    puts "done"
#    puts "#{item}"
#end

#	source = "http://www.nytimes.com/services/xml/rss/nyt/pop_top.xml"
#	content=""
#	open(source) do |s|
#	  content = s.read
#	end

#	rss = RSS::Parser.parse(content,false)

#	print "RSS title: ", rss.channel.title, "\n"
#	print "title of first item: ", rss.items[0].title, "\n"
#	print "link of first item: ", rss.items[0].link, "\n"
#	print "description of first items: ", rss.items[0].description, "\n"
#	print "date of first items: ", rss.items[0].date, "\n"
