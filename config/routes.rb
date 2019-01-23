Rails.application.routes.draw do
  devise_for :users
  get 'meetup/index'
  get 'meetup/show'
  #root 'meetup#index'
  root 'groceries#index'
  
  resources  :groceries do
    resources :foods
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
