Rails.application.routes.draw do
  resources :reviews, except: [:destroy, :edit, :update,:show]
  resources :gigs
  resources :clubs, except: [:destroy]
  resources :jokes
  resources :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "users#index"

  delete '/sessions/page_reset', to: 'sessions#page_reset', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'

  patch "/jokes/:id/like", to: "jokes#like", as: "like"
  

  
  
end
