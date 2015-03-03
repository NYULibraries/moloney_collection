class FindingAidsController < InheritedResources::Base
  def index
    @findingaid = FindingAid.where(id: 1).first
  end

  private

    def finding_aid_params
      params.require(:finding_aid).permit(:body_text)
    end
end

