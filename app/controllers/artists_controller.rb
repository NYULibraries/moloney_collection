class ArtistsController < InheritedResources::Base
  def index
    @artists = Artist.all
    @artist_grid = Artist.all
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

