class ArtistsController < ApplicationController
  def index
    @artist_grid = Artist.order('name asc')
  end

  def show
    @artist = Artist.friendly.find(params[:id])
    @related_song = Artist.friendly.find(params[:id]).songs
  end

  private
    def artist_params
      params.require(:artist).permit()
    end
end

