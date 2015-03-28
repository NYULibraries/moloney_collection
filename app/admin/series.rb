ActiveAdmin.register Series do
  permit_params :title, :description, :table
  active_admin_import

  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  index do
    column :title
    column "Description" do |series|
      truncate(series.description, omission: "...", length: 200, escape: false)
    end
    actions
  end
  form do |f|
    inputs 'Details' do
      input :title
      input :slug
      input :description, :as => :ckeditor
      input :table, :as => :ckeditor
      li "Created at #{f.object.created_at}" unless f.object.new_record?
      actions
    end
  end


end
