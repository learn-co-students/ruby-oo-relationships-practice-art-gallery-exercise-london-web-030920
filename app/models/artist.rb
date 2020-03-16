class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience, painting_titles)
    @name = name
    @painting_titles = painting_titles
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_paintings(paintings)
    @paintings = paintings
    new_array = []
  end


end
