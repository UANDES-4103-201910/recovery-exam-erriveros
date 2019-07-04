Rails.application.routes.draw do
  resources :pizzas, only:[:index, :show]

  devise_for :users

  root 'pizzas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
