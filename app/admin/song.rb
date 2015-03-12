ActiveAdmin.register Song do
  permit_params :artist_id, :collection, :description, :embed, :slug, :refid, :aiamm, :duration
  active_admin_import

  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  index do
    column :artist
    column :aiamm
    column :refid
    column :duration
    column "Description" do |song|
      truncate(song.description, omission: "...", length: 200, escape: false)
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :artist
      input :collection
      input :aiamm
      input :refid
      input :duration, :hint => "Enter as HH:MM:SS, ex. '01:13:02'"
      input :embed, :input_html => { :rows => 5, :cols => 10  }
      input :description, :as => :ckeditor
      li "Created at #{f.object.created_at}" unless f.object.new_record?
      actions
    end
  end
end
