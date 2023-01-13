class Artist
attr_reader :id, :name, :born, :died, :country, :age_at_death

  def initialize (attributes)
    @name = attributes[:name]
    @id =attributes[:id]
    @born = attributes[:born]
    @died = attributes[:died]
    @country = attributes[:country]
    @age_at_death = attributes[:age_at_death]
  end
  
end