Rails.application.routes.draw do
  resources :blue_background

  resources :todo_items do
    member do
      patch 'toggle_status'
    end
  end

  devise_for :accounts
  # get '/blue_background', to: 'blue_background#index'
  get '/show_by_keyword', to: 'blue_background#show_by_keyword'
  root to: 'todo_items#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
