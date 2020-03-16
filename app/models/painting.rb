class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price

    @@all << self
  end

  def self.total_price
    @@all.map{|title, price| total_price.price == price.sum}
  end

end
