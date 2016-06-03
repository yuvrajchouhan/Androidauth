Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :products
  root "products#index"

  namespace :api, defaults: {format: 'json'} do
      devise_scope :user do
       namespace :v1 do
        resources :products
        post 'registrations' => 'registrations#create', :as => 'register'
        resources :sessions, :only => [:create, :destroy]
      end
    end
  end

  resources :users
end
