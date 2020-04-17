Rails.application.routes.draw do
  
  resources :users, only: [:new , :create]
  get '/apis' , to: 'results#index' 
  get '/login', to: 'sessions#new' , as: 'sessions'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  delete '/logout', to: 'sessions#destroy'
  get '/authorized', to: 'sessions#page_requires_login'
 resources :teams , only: [:index , :new ,  :create , :show ]
 resources :contracts , only: [ :new , :create , :edit , :destroy]
 resources :players , only: [:index , :create , :new ,  :show ,  :edit , :update, :destroy]
 resources :leagues , only: [:index , :create , :show ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
