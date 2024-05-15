Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :articles
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")

  # show all tasks
  get "/articles", to: "articles#index"

  # create a new task 
  post "/articles", to: "articles#create"
  get "/articles/new", to: "articles#new"

  # show one / read one 
  get "articles/:id", to: "articles#show", as: "article"

  # edit task
  get "articles/:id/edit", to: "articles#edit"
  patch "articles/:id", to: "articles#update"

  # delete 
  delete "articles/:id", to: "articles#destroy"
end
