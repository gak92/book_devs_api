Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions:       'users/sessions',
    registrations:  'users/registrations'
  }

  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :developers
      resources :members, only: [:index]
      # devise_for :users, controllers: {
      #   sessions:       'api/v1/users/sessions',
      #   registrations:  'api/v1/users/registrations'
      # }
    end
  end  

  # Defines the root path route ("/")
  # root "articles#index"
end
