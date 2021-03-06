Rails.application.routes.draw do
  resources :ratings
  resources :fetcheds
  resources :genres
  resources :favorites
  resources :likes
  resources :reviews
  resources :movies
  resources :users, only: [:index, :show, :create, :destroy, :update]

  # resources :users do
  #     resources :likes
  # end

  post '/users/:id/likes', to: 'likes#create'
  delete '/users/likes/:id', to: 'likes#destroy'
  post '/users/:id/favorites', to: 'favorites#create'
  delete '/users/favorites/:id', to: 'favorites#destroy'
  post 'users/:id/reviews/', to: 'reviews#create'
  delete 'users/reviews/:id', to: 'reviews#destroy'
  get '/topmovies', to: 'movies#topmovies'
  get '/genres/action', to: 'genres#genre'
  get '/genres/comedy', to: 'genres#genre'
  get '/genres/horror', to: 'genres#genre'
  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
