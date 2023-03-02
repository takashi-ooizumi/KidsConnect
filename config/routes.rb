Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "top_page#index"

  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[index edit show new create update] do
    resources :identifications, only: %i[show edit]
    resources :children, only: %i[index edit show new]
    resources :group_members, only: %i[index]
    resources :block_members, only: %i[index]
    resources :messages, only: %i[index show]
  end

  resources :playgrounds, only: %i[index edit show new]
end
