Rails.application.routes.draw do

  resources :products do
    resources :user_interests
  end  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Defines the root path route ("/")
  root to: "products#index"
end
