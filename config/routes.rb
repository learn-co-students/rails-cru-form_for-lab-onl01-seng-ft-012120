Rails.application.routes.draw do
  get 'song/create'

  get 'song/update'

  get 'song/show'

  get 'genre/create'

  get 'genre/update'

  get 'genre/show'

  get 'artist/create'

  get 'artist/update'

  get 'artist/show'

  resources :artists
  resources :songs
  resources :genres

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
