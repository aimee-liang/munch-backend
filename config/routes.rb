Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :restaurants, only: [:index, :show]
      resources :location, only: [:index, :show]
      resources :reviews
      resources :reservations
      resources :cuisine, only: [:index, :show]
    end
  end

end
