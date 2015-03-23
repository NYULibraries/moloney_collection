class GaelicAthletesController < InheritedResources::Base

  private

    def gaelic_athlete_params
      params.require(:gaelic_athlete).permit(:name, :description)
    end
end

