Rails.application.routes.draw do
  resources :events
  devise_for :vendors
  devise_for :admins
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
