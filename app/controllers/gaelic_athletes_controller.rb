class GaelicAthletesController < ApplicationController

  def index
    @gaelic_grid = GaelicAthlete.order('name asc')
  end

  def show
    @gaelic_athlete = GaelicAthlete.friendly.find(params[:id])
  end

  private
    def gaelic_athlete_params
      params.require(:gaelic_athlete).permit(:name, :description)
    end
end

