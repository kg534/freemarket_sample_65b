Rails.application.routes.draw do
  root to: 'maintop#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root to: "products#index"
  resources :products do
    collection do
      get 'get_category_child', defaults: { format: 'json' }
      get 'get_category_grandchild', defaults: { format: 'json' }
    end
  end
  
  resources :categories, only: [:new, :show]
end
