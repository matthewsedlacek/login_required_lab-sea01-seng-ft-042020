Rails.application.routes.draw do
  get 'secrets/show'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post '/logout' => 'sessions#destroy'

  root 'application#hello'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
