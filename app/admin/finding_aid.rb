ActiveAdmin.register FindingAid do
  permit_params :creator, :title, :header, :dates_inclusive, :dates_bulk, :abstract, :quantity, :location_note, :language, :call_phrase, :historical_note, :scope_note, :access_points, :administrative_information, :arrangement 
  active_admin_import

  
  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end


  index do
    column :creator
    column :title
    column "Abstract" do |song|
      truncate(song.abstract, omission: "...", length: 200, escape: false)
    end
    actions
  end

  form do |f|
    inputs 'Details' do
      input :creator
      input :title
      input :dates_inclusive
      input :dates_bulk
      input :abstract, :as => :ckeditor
      input :quantity, :as => :ckeditor
      input :location_note, :as => :ckeditor
      input :language
      input :call_phrase
      input :header, :as => :ckeditor 
      input :historical_note, :as => :ckeditor
      input :scope_note, :as => :ckeditor
      input :arrangement, :as => :ckeditor
      input :access_points, :as => :ckeditor
      input :administrative_information, :as => :ckeditor 

      actions
    end
  end
end
