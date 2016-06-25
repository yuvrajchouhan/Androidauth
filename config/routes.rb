
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'

  resources :checkouts
  resources :products
  resources :pants
  resources :shirts
  root "products#index"

  namespace :api, defaults: {format: 'json'} do
       namespace :v1 do
      devise_scope :user do
        resources :products
        post 'registrations' => 'registrations#create', :as => 'register'
        resources :sessions, :only => [:create, :destroy]
      end
      get 'tasks' => 'tasks#index', :as => 'tasks'
    end
  end

  resources :users
end
