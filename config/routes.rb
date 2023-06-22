Rails.application.routes.draw do

  get 'users/index'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "homes/about" => 'homes#about', as:"about"
  
  resources :books
  resources :users,only: [:index, :edit, :show, :create, :updete]
end
