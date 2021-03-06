Rails.application.routes.draw do

  get 'payment_methods/update'
  resource :checkouts, only:[:show]
  resource :cards, only:[:show]
  resources :order_items
  resources :pizzas, only:[:index, :show]

  devise_for :users

  root 'pizzas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
