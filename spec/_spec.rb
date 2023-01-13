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

  describe "iteration 3" do

    it '#photographs by artist' do 
      curator = Curator.new # => #<Curator:0x00007fabc6c2b680...>
      
      photo_1 = Photograph.new({
          id: "1",      
          name: "Rue Mouffetard, Paris (Boy with Bottles)",      
          artist_id: "1",      
          year: "1954"      
     }) # => #<Photograph:0x00007fabc6933180...>
     
      photo_2 = Photograph.new({    
          id: "2",      
          name: "Moonrise, Hernandez",      
          artist_id: "2",      
          year: "1941"      
     }) # => #<Photograph:0x00007fabc6c28e58...>
     
      photo_3 = Photograph.new({    
          id: "3",      
          name: "Identical Twins, Roselle, New Jersey",      
          artist_id: "3",      
          year: "1967"      
     }) # => #<Photograph:0x00007fabc5bb9ef0...>
     
      photo_4 = Photograph.new({    
          id: "4",      
          name: "Monolith, The Face of Half Dome",      
          artist_id: "3",      
          year: "1927"      
     })  # => #<Photograph:0x00007fabc6b931f0...>
     
      artist_1 = Artist.new({    
          id: "1",      
          name: "Henri Cartier-Bresson",      
          born: "1908",      
          died: "2004",      
          country: "France"      
     })  # => #<Artist:0x00007fabc6a52340...>
     
      artist_2 = Artist.new({    
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
     })  # => #<Artist:0x00007fabc6c20870...>
     
      artist_3 = Artist.new({    
          id: "3",      
          name: "Diane Arbus",      
          born: "1923",      
          died: "1971",      
          country: "United States"      
     })  # => #<Artist:0x00007fabc5ba0c70...>
     
      curator.add_artist(artist_1)  
      curator.add_artist(artist_2)    
      curator.add_artist(artist_3)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)
      expect(curator.photographs_by_artist).to eq({
        artist_1 => [photo_1],
        artist_2 => [photo_2],
        artist_3 => [photo_3, photo_4]
      })
     # => {
     #        #<Artist:0x00007fabc6a52340...> => [#<Photograph:0x00007fabc6933180...>],
     #        #<Artist:0x00007fabc6c20870...> => [#<Photograph:0x00007fabc6c28e58...>],
     #        #<Artist:0x00007fabc5ba0c70...> => [#<Photograph:0x00007fabc5bb9ef0...>, #<Photograph:0x00007fabc6b931f0...>]
     #      }
    end

    it '#artists_with_multiple_photographs' do 
      curator = Curator.new # => #<Curator:0x00007fabc6c2b680...>
      
      photo_1 = Photograph.new({
          id: "1",      
          name: "Rue Mouffetard, Paris (Boy with Bottles)",      
          artist_id: "1",      
          year: "1954"      
     }) # => #<Photograph:0x00007fabc6933180...>
     
      photo_2 = Photograph.new({    
          id: "2",      
          name: "Moonrise, Hernandez",      
          artist_id: "2",      
          year: "1941"      
     }) # => #<Photograph:0x00007fabc6c28e58...>
     
      photo_3 = Photograph.new({    
          id: "3",      
          name: "Identical Twins, Roselle, New Jersey",      
          artist_id: "3",      
          year: "1967"      
     }) # => #<Photograph:0x00007fabc5bb9ef0...>
     
      photo_4 = Photograph.new({    
          id: "4",      
          name: "Monolith, The Face of Half Dome",      
          artist_id: "3",      
          year: "1927"      
     })  # => #<Photograph:0x00007fabc6b931f0...>
     
      artist_1 = Artist.new({    
          id: "1",      
          name: "Henri Cartier-Bresson",      
          born: "1908",      
          died: "2004",      
          country: "France"      
     })  # => #<Artist:0x00007fabc6a52340...>
     
      artist_2 = Artist.new({    
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
     })  # => #<Artist:0x00007fabc6c20870...>
     
      artist_3 = Artist.new({    
          id: "3",      
          name: "Diane Arbus",      
          born: "1923",      
          died: "1971",      
          country: "United States"      
     })  # => #<Artist:0x00007fabc5ba0c70...>
     
      curator.add_artist(artist_1)  
      curator.add_artist(artist_2)    
      curator.add_artist(artist_3)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)
      expect(curator.artists_with_multiple_photographs).to eq(["Diane Arbus"])
     
    end

    it '#photographs_taken_by_artist_from(country)' do
       curator = Curator.new # => #<Curator:0x00007fabc6c2b680...>
      
       photo_1 = Photograph.new({
           id: "1",      
           name: "Rue Mouffetard, Paris (Boy with Bottles)",      
           artist_id: "1",      
           year: "1954"      
      }) # => #<Photograph:0x00007fabc6933180...>
      
       photo_2 = Photograph.new({    
           id: "2",      
           name: "Moonrise, Hernandez",      
           artist_id: "2",      
           year: "1941"      
      }) # => #<Photograph:0x00007fabc6c28e58...>
      
       photo_3 = Photograph.new({    
           id: "3",      
           name: "Identical Twins, Roselle, New Jersey",      
           artist_id: "3",      
           year: "1967"      
      }) # => #<Photograph:0x00007fabc5bb9ef0...>
      
       photo_4 = Photograph.new({    
           id: "4",      
           name: "Monolith, The Face of Half Dome",      
           artist_id: "3",      
           year: "1927"      
      })  # => #<Photograph:0x00007fabc6b931f0...>
      
       artist_1 = Artist.new({    
           id: "1",      
           name: "Henri Cartier-Bresson",      
           born: "1908",      
           died: "2004",      
           country: "France"      
      })  # => #<Artist:0x00007fabc6a52340...>
      
       artist_2 = Artist.new({    
           id: "2",      
           name: "Ansel Adams",      
           born: "1902",      
           died: "1984",      
           country: "United States"      
      })  # => #<Artist:0x00007fabc6c20870...>
      
       artist_3 = Artist.new({    
           id: "3",      
           name: "Diane Arbus",      
           born: "1923",      
           died: "1971",      
           country: "United States"      
      })  # => #<Artist:0x00007fabc5ba0c70...>
      
       curator.add_artist(artist_1)  
       curator.add_artist(artist_2)    
       curator.add_artist(artist_3)
       curator.add_photograph(photo_1)
       curator.add_photograph(photo_2)
       curator.add_photograph(photo_3)
       curator.add_photograph(photo_4)

       expect(curator.photographs_taken_by_artist_from("United States")).to eq([photo_2, photo_3, photo_4])
      # => [#<Photograph:0x00007fabc6c28e58...>, #<Photograph:0x00007fabc5bb9ef0...>, #<Photograph:0x00007fabc6b931f0...>
      
       expect(curator.photographs_taken_by_artist_from("Argentina")).to eq([])
      # => []
    end
  end

 end
 