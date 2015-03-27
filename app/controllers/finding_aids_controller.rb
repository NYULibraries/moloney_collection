class FindingAidsController < InheritedResources::Base

  private

    def finding_aid_params
      params.require(:finding_aid).permit(:creator, :title, :dates_inclusive, :dates_bulk, :abstract, :quantity, :location_note, :language, :call_phrase)
    end
end

