Rails.application.routes.draw do

  resources :products do
    resources :comments
  end
  devise_for :users, controllers: { registrations: "user_registrations" }
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  # redirect your users to a different page
  post 'simple_pages/thank_you'
  # rerouting the landing page
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'payments/create'
  mount ActionCable.server => '/cable'
end
