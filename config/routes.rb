Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/posts", to: "posts#index", as: "posts"
  post "/posts", to: "posts#create", as: "posts"
  get "/posts/new", to: "posts#new", as: "new_post"
  get "/posts/:id/edit", to "posts#edit", as: "edit_post"
  get "posts/:id", to "posts#show", as: "post"
  put "posts/:id", to "posts#update", as: "post"
  delete "posts/:id", to "posts#destroy", as: "post"
  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'blog#index'
end
