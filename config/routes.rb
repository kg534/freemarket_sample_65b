Rails.application.routes.draw do

  root to: "products#index"

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
  
  namespace :products do
    resources :searches, only: :index
  end

  get 'maintops', to: 'maintop#index'
  
  resources :products do
    resources :transactions, only: [:index] do
      collection do
        get 'done'
        post 'pay'
      end
    end
    collection do
      get 'get_category_child', defaults: { format: 'json' }
      get 'get_category_grandchild', defaults: { format: 'json' }
      get 'search'
    end
    resources :edit ,only: [:edit]
      member do
        get 'get_category_child', defaults: { format: 'json' }
        get 'get_category_grandchild', defaults: { format: 'json' }
      end
  end
  resources :categories, only: [:new, :show]
end
