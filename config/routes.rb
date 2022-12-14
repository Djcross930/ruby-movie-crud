Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  post "/movies" => "movies#create"
  delete "/movies/:id" => "movies#destroy"
end
