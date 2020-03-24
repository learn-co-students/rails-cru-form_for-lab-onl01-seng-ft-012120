Rails.application.routes.draw do
  resources :songs, only: [:new, :create, :show, :index, :edit, :update]
  resources :genres, only: [:new, :create, :show, :index, :edit, :update]
  resources :artists, only: [:new, :create, :show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
