Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :collections, except: [:new, :create, :edit, :update, :destroy]
  resources :documents, except: [:new, :create, :edit, :update, :destroy]
  resources :artists, except: [:new, :create, :edit, :update, :destroy]
  resources :finding_aids, except: [:new, :create, :edit, :update, :destroy]
  resources :songs, except: [:new, :create, :edit, :update, :destroy]
  
  root "static_pages#home"
  get "documents" => "documents#index"
  get "artists" => "artists#index"
  get "song-histories-of-the-cuban-revolution" => "collections#VHCR"

  #Static pages
  get "moloney-collection" => "static_pages#moloney_collection"
  get "contact" => "static_pages#contact" 
  get "mick-moloney" => "static_pages#mick_moloney"
  get "finding-aid" => "finding_aids#index"
  get "tamiment-library" => "static_pages#tamiment_library"
  get "song-rights" => "static_pages#song_rights"

end
