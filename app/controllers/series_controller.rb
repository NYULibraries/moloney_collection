class SeriesController < ApplicationController
  def show
    @series = Series.friendly.find(params[:id])
  end

  private

    def series_params
      params.require(:series).permit(:title, :description)
    end
end

