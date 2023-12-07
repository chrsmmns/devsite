Rails.application.routes.draw do
  resources :posts
  resources :projects, only: [:index, :show]
  get "/about", to: "welcome#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get "/login", to: "users#login_form"
  post "/login", to: "users#login"
  get "/logout", to: "users#logout"
end
