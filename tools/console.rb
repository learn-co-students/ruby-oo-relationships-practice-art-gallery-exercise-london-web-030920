require_relative '../config/environment.rb'

guggenheim = Gallery.new("Guggenheim", "Berlin")
vanda = Gallery.new("v and A", "London")

rebecca = Artist.new("Rebecca Horn", 50)
banksy = Artist.new("Banksy", 20)

banksy_red = Painting.new("red baloon", 1500, banksy, vanda)
banksy_blue = Painting.new("blue baloon", 2000, banksy, guggenheim)
cartoon = Painting.new("cartoon duck", 20, rebecca, vanda)




binding.pry

puts "Bob Ross rules."
