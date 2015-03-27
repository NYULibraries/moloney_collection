class SeriesController < InheritedResources::Base

  private

    def series_params
      params.require(:series).permit(:title, :description)
    end
end

