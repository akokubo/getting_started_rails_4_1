Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  resources :users
  match '/sign_up', to: 'users#new', via: 'get'

  root 'welcome#index'
end
