class Painting

  attr_reader :title, :price, :gallery, :artist
  
  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.map {|painting| painting.price}
  end


end
