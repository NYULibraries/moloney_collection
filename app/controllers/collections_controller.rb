class CollectionsController < ApplicationController
  def index
    redirect_to "/collections/1"
  end
 
  def show
    @collection = Collection.friendly.find(params[:id])
    @songs = Song.where(collection_id: @collection.id)
  end

  private

    def collection_params
      params.require(:collection).permit(:title, :description, :slug, :image)
    end
end

