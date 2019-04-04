Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  root "static_pages#home"

  resources :artists, except: [:new, :create, :edit, :update, :destroy]
  resources :collections, except: [:new, :create, :edit, :update, :destroy]
  resources :documents, except: [:new, :create, :edit, :update, :destroy]
  resources :finding_aids, except: [:new, :create, :edit, :update, :destroy]
  resources :gaelic_athletes, except: [:new, :create, :edit, :update, :destroy]
  resources :series, except: [:new, :create, :edit, :update, :destroy]
  resources :songs, except: [:new, :create, :edit, :update, :destroy]

  #Static pages
  get "about" => "static_pages#about"
  get "contact" => "static_pages#contact"
  get "rights-statement" => "static_pages#rights_statement"
  get "song-rights" => "static_pages#song_rights"
  get "tamiment-library" => "static_pages#tamiment_library"

end
