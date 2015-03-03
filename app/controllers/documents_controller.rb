class DocumentsController < InheritedResources::Base
  def index
    @documents = Document.all
  end

  private

    def document_params
      params.require(:document).permit(:title, :year, :description)
    end
end

