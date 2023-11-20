Rails.application.routes.draw do
  resources :posts
  get "/about", to: "welcome#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
