Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :ideas do 
    resources :reviews, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  
  resources :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
 

  get '/', {to: 'ideas#home', as: 'home_page'}
end
