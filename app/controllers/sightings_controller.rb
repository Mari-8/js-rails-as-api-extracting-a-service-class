class SightingsController < ApplicationController

    def index 
        def index
            sightings = Sighting.all
            render json: SightingSerializer.new(sightings).to_serialized_json
          end
    end 
    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialized_json
    end
end
