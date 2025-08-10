Rails.application.routes.draw do
  resources :recipes

  post "/signup" => "users#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/me" => "users#me"

  get "/my_recipes" => "recipes#my_recipes"

  delete "/favorites" => "favorites#destroy"
  resources :favorites, only: [:create, :destroy]

  get "/favorite_recipes" => "favorites#user_favorites"

end
