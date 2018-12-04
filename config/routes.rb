Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  # redirect your users to a different page
  post 'simple_pages/thank_you'
  # rerouting the landing page
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
