Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/gardens", to: "gardens#index"
  get "/gardens/new", to: "gardens#new"
  post "/gardens", to: "gardens#create"

  get "/gardens/:id", to: "gardens#show"
  get "/gardens/:id/edit", to: "gardens#edit"
  patch "/gardens/:id", to: "gardens#update"

  get "/gardens/:id/plants", to: "garden_plants#index"
  get "/gardens/:id/plants/new", to: "garden_plants#new"
  post "/gardens/:id/plants", to: "garden_plants#create"
  post "/gardens/:id/plants/alphabetize", to: "garden_plants#alphabetize"

  get "/plants", to: "plants#index"
  get "/plants/:id", to: "plants#show"
  get "/plants/:id/edit", to: "plants#edit"
  patch "/plants/:id", to: "plants#update"
end
