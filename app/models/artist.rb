class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all
  @@all
  end

  def all_paintings
    Painting.all.select do|painting|
       painting.artist.name == self.name
    end
  end

  def paintings
    all_paintings.map{|painting| painting.title}
  end

  def galleries 
    all_galleries = all_paintings.map{|painting| painting.gallery}
    all_galleries.uniq
  end

  def cities 
    all_cities = all_paintings.map{|painting| painting.gallery.city}
    all_cities.uniq
  end

  def self.total_experience
    self.all.map{|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    self.all.max{|artist| artist.years_experience}
  end

end
