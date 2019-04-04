ActiveAdmin.register Document do
  permit_params :title, :year, :description, :slug, :document_file, :identifier
  active_admin_import

  controller do
    def create
      create! do |format|
        format.html { redirect_to admin_documents_path }
      end
    end

    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  index do
    column :title
    column :identifier
    column "Image" do |image|
      image_tag(image.document_file(:small))
    end
    column "Description" do |document|
      truncate(document.description, omission: "...", length: 200, escape: false)
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :title
      if object.slug.present?
        input :slug
      end
      input :identifier
      input :description, :as => :ckeditor
      input :document_file, :as => :file, :hint => object.document_file.present? ? image_tag(object.document_file(:small)) : content_tag(:span, "no image uploaded yet")
      li "Created at #{f.object.created_at}" unless f.object.new_record?
      actions
    end
end

end
