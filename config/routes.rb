Rails.application.routes.draw do
  # resources :user_interests

  resources :products do
    resources :user_interests
  end
  
  
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Defines the root path route ("/")
  root to: "products#index"
end
