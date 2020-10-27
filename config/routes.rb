Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :customers, only: [:new, :create]
  
  get 'privacy', :to => 'pages#privacy_policy'
  get 'contact', :to => 'customers#new'

  # must put resources after
  get 'properties', :to => 'pages#properties'
  resources :properties, only: [:index, :show, :create, :new]

end
