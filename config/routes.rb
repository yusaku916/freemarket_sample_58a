Rails.application.routes.draw do
<<<<<<< Updated upstream

  root 'top#index'

  devise_scope :user do
    post 'users', to: 'devise/registrations#create'
  end
  devise_for :users
 
  resources :users, only: [:edit, :show]

  resources :credit_cards, only: [:new, :show] do
    collection do
      post 'show', to: 'credit_cards#show'
      post 'pay', to: 'credit_cards#pay'
      post 'delete', to: 'credit_cards#delete'
    end
  end

  resources :products, only: [:index, :new, :create, :edit, :show] do
    resources :likes, only: [:create]
  end
  get "purchase_product" => "products#purchase"
  resources :comments, only: [:index, :create] 

=======
  resources :charge_method
  resources :status
  resources :products do
    collection do
      get "cate_children" 
      get "grand_children" 
    end
  end
>>>>>>> Stashed changes
end
