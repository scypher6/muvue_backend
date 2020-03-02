Rails.application.routes.draw do
  resources :ratings
  resources :fetcheds
  resources :genres
  resources :favorites
  resources :likes
  resources :reviews
  resources :movies
  resources :users, only: [:index, :show, :create, :destroy, :update]


  get '/genres/action', to: 'genres#action'
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
