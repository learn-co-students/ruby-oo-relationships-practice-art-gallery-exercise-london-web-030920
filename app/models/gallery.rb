class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    
    @@all << self

  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    artist.map {|artist| artist.name}
  end

  def self.all
    @@all
  end

end
