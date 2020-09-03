class SightingsController < ApplicationController
<<<<<<< HEAD
 def show
  sighting = Sighting.find_by(id: params[:id])
  options = {
    include: [:bird, :location]
  }
  render json: SightingSerializer.new(sighting, options)
end
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
=======
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings).to_serialized_json
  end
 
  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: SightingSerializer.new(sighting).to_serialized_json
>>>>>>> 1e89e02e7d6b8f69f3a10796cbcb72d4ad6d966a
  end
end