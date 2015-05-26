class FindingAidsController < ApplicationController
  def index
    @finding_aid = FindingAid.all().order(:title)
  end

  def show
    @finding_aid = FindingAid.friendly.find(params[:id])
    @series = Series.where(finding_aid_id: @finding_aid.id).order(:title)
  end

  private

    def finding_aid_params
      params.require(:finding_aid).permit(:creator, :title, :dates_inclusive, :dates_bulk, :abstract, :quantity, :location_note, :language, :call_phrase)
    end
end

