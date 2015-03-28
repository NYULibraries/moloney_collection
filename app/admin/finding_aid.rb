ActiveAdmin.register FindingAid do
  permit_params :creator, :title, :header, :dates_inclusive, :dates_bulk, :abstract, :quantity, :location_note, :language, :call_phrase
  active_admin_import

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

      actions
    end
  end
end
