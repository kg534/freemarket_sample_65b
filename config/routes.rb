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
      resources :cards, only: [:index, :new, :create, :destroy]
    end
  end
  get 'maintops', to: 'maintop#index'
  root to: "products#index"
  
  resources :products do
    resources :transactions, only: [:index] do
      collection do
        get 'done'
        post 'pay'
      end
    end
    collection do
      get 'search'
    end
  end
end
