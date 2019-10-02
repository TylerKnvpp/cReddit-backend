Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/user_profile', to: 'auth#user_profile'
  
  resources :users, only: [:show, :create, :update]
  resources :posts, only: [:index, :show, :create, :delete, :update]
  resources :comments, only: [:index, :show, :create, :delete, :update]

  

end
