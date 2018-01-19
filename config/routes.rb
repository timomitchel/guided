Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Custom Routes
  root "welcome#index"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/signup", to: "signup#show"


  #RESTful Routes
  resources :guides, only: [:new, :index]
  resources :cities, only: [:index]
  resources :users, only: [:new]
end
