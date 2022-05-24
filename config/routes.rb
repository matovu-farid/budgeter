Rails.application.routes.draw do
  resources :splashes
  resources :categories do
    resources :purchases
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splashes#index"
end
