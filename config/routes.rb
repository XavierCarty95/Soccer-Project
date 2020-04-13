Rails.application.routes.draw do
  
  resources :users, only: [:new , :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  delete '/logout', to: 'sessions#destroy'
  get '/authorized', to: 'sessions#page_requires_login'
 resources :teams , only: [:index , :create , :show , :edit]
 resources :contracts , only: [ :new , :create , :edit]
 resources :players , only: [:index , :create , :show , :edit]
 resources :leagues , only: [:index , :create , :show , :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
