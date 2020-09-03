class SightingSerializer
<<<<<<< HEAD
=======
 
  def initialize(sighting_object)
    @sighting = sighting_object
  end
 
  def to_serialized_json
    @sighting.to_json(:include => {
      :bird => {:only => [:name, :species]},
      :location => {:only => [:latitude, :longitude]}
    }, :except => [:updated_at])
  end
 
>>>>>>> 1e89e02e7d6b8f69f3a10796cbcb72d4ad6d966a
end