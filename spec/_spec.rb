 require './lib/photograph'
 require './lib/artist'
 require './lib/curator'




 describe Photograph do 


  it ' has an id' do 
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }      

    photograph = Photograph.new(attributes)
    expect(photograph.id).to eq("1") #=> "1"
  end


  it 'has a name' do 
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }      

    photograph = Photograph.new(attributes)
    expect(photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)") #=> "Rue Mouffetard, Paris (Boy with Bottles)"
  end

  it ' has an artist id' do
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }      

    photograph = Photograph.new(attributes)
    expect(photograph.artist_id).to eq("4") #=> "4"
  end

  it ' has a year ' do 
    attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }      

    photograph = Photograph.new(attributes)
    expect(photograph.year).to eq("1954") #=> "1954"

  end
 end


 describe Artist do 

  it 'has an id' do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.id).to eq("2")
  end

  it ' has a name' do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.name).to eq("Ansel Adams")
  end

  it 'has a year born' do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.born).to eq("1902")
  end

  it 'has a year died ' do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.died).to eq("1984")
  end
  
  it 'has a country' do
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.country).to eq("United States")
  end

  it' has an age at death' do 
    attributes = {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
    artist = Artist.new(attributes)
    expect(artist.age_at_death).to eq(82)
  end
 end

 describe Curator do 

  it ' has photographs' do
    curator = Curator.new  
    expect(curator.photographs).to eq([])

  end

  it 'can add photographs' do 
    curator = Curator.new  
    photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })        
    photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    })        
    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)
    expect(curator.photographs).to eq([photo_1, photo_2])
  end

  it ' can have artists' do 
    curator = Curator.new  
   expect(curator.artists).to eq([])
  end

  it ' can add artists' do
    curator = Curator.new  
    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })    
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })        
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)
    expect(curator.artists).to eq([artist_1, artist_2])
  end

  it 'can find artist by id' do
    curator = Curator.new  
    artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })    
    artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })        
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)
    expect(curator.find_artist_by_id("1")).to eq(artist_1)
  end

 end
 