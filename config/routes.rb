Rails.application.routes.draw do
  resources :ratings
  resources :fetcheds
  resources :genres
  resources :favorites
  resources :likes
  resources :reviews
  resources :movies
  resources :users, only: [:show, :create]


  get '/genres/action', to: 'genres#action'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
