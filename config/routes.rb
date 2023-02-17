Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "top_page#index"

  resources :users, only: %i[index edit show new] do
    resources :identifications, only: %i[show edit]
    resources :children, only: %i[index edit show new]
  end
end
