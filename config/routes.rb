Rails.application.routes.draw do
  resources :foodusers
  resources :expired_foods
  resources :foodies
 # get 'receipt/index'
 # get 'receipt/new'
 # post 'receipt/create'
 # get 'receipt/destroy'
  devise_for :users
  get 'meetup/index'
  get 'meetup/show'
  #root 'meetup#index'
  root 'groceries#index'
  
  resources  :groceries do
    resources :foods
  end

  resources :receipts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
