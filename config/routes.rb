Rails.application.routes.draw do
  resources :recipes

  post "/signup" => "users#create"

  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
