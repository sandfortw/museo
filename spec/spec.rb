 require './lib/photograph'
 require './lib/artist'




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
    expect(photograph.photograph.year).to eq("1954") #=> "1954"

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
    expect(artist.county).to eq("United States")
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
 