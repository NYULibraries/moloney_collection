ActiveAdmin.register GaelicAthlete do
  permit_params :name, :biographical_note, :image, :recommended_citation, :slug 
  active_admin_import

  controller do
    def update
      update! do |format|
        format.html { redirect_to admin_gaelic_athletes_path }
      end
    end
    def create
      create! do |format|
        format.html { redirect_to admin_gaelic_athletes_path }
      end
    end
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  index do
    column :name
    column "Biographical Note" do |gaelic_athlete|
      truncate(gaelic_athlete.biographical_note, omission: "...", length: 200, escape: false)
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :name
      input :slug
      input :biographical_note, :as => :ckeditor
      input :image, :as => :file, :hint => object.image.present? ? image_tag(object.image.url) : content_tag(:span, "no image uploaded yet")
      li "Created at #{f.object.created_at}" unless f.object.new_record?
      actions
    end
  end  

end
