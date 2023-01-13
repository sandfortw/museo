class Curator
  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end


  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id_string)
    @artists.find do |artist|
      artist.id == id_string
    end
  end

  def photographs_by_artist
    hash = {}
    @artists.each do |artist|
      hash[artist] = []
    end
   
    @artists.each do |artist|
      @photographs.each do |photo|
        hash[artist] << photo if photo.artist_id == artist.id
      end
    end
    hash
  end

  def photographs_taken_by_artist_from(country)
    array = []
    @photographs.each do |photo|
      @artists.each do |artist|
        array << photo if photo.artist_id == artist.id && artist.country == country
      end
    end
    array
  end

  def artists_with_multiple_photographs
    array = []
    photographs_by_artist.each do |artist, album|
      array << artist.name if album.size > 1
    end
    array
  end

end