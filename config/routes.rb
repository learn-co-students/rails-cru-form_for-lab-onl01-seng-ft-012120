Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:create, :update, :edit, :index, :new, :show]
  resources :genres, only: [:create, :update, :edit, :index, :new, :show]
  resources :artists, only: [:create, :update, :edit, :index, :new, :show]
end
