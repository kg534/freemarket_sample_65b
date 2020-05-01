Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }

  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  namespace :mypages do
    resources :users, only: :show do
      member do
        get 'logout'
      end
      resources :cards, only: [:index, :new, :create]
    end
  end
  namespace :products do
    resources :searches, only: :index
  end

  get 'maintops', to: 'maintop#index'
  root to: "products#index"
  resources :products do
  end
end
