Rails.application.routes.draw do
  get 'home/index'
  resources :medical_histories
  resources :appointments
  resources :pets
  devise_for :admins
  devise_for :veterinaries
  devise_for :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
end
