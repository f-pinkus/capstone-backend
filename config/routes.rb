Rails.application.routes.draw do
  resources :recipes

  post "/signup" => "users#create"
end
