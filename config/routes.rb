Rails.application.routes.draw do
  resources :recipes

  post "/signup" => "users#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  get "/me" => "users#me"

  get "/my_recipes" => "recipes#my_recipes"
end
