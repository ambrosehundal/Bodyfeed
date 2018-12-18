Rails.application.routes.draw do
  get 'meetup/index'

  root 'meetup/index'
  #root 'groceries#index'


  resources :groceries do
    resources :foods
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
