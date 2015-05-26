class DocumentsController < ApplicationController
  def index
    @documents = Document.all
    @other_docs = Document.order("RAND()").limit(12)
  end

  def show
    @document = Document.friendly.find(params[:id])
    @other_docs = Document.where.not(id: @document.id).order("RAND()").limit(12)
  end

  private

    def document_params
      params.require(:document).permit(:title)
    end
end

