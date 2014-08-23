Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  resources :users

  resources :sessions, only: [:new, :create, :destroy]

  match '/sign_up',  to: 'users#new',        via: 'get'
  match '/sign_in',  to: 'sessions#new',     via: 'get'
  match '/sign_out', to: 'sessions#destroy', via: 'delete'

  root 'welcome#index'
end
