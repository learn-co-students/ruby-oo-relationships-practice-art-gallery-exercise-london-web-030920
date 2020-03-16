class Gallery

  attr_reader :name, :city
  
  @@all = []

  def initialize(name, city, artist, painting)
    @name = name
    @city = city
    @artist = artist
    @painting = painting

    @@all << self

  end

end
