Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :recipes
      resources :ingredients
      resources :favorites
      resources :categories
      resources :follows
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get "/users/:id/follow", to: "users#follow", as: "follows_with"
    end
  end
end
