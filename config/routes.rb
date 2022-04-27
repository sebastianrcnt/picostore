Rails.application.routes.draw do
  namespace :customer do
    get 'membership_subscriptions/new'
    get 'membership_subscriptions/complete'
    get 'membership_subscriptions/index'
    get 'membership_subscriptions/show'
  end
  namespace :customer do
    get 'memberships/show'
  end
  namespace :customer do
    get 'product_orders/new'
    get 'product_orders/complete'
    get 'product_orders/index'
    get 'product_orders/show'
  end
  namespace :customer do
    get 'products/show'
  end
  namespace :manage do
    get 'payouts/index'
    get 'payouts/show'
  end
  namespace :manage do
    get 'payments/index'
    get 'payments/show'
  end
  namespace :manage do
    get 'posts/index'
    get 'posts/show'
    get 'posts/new'
    get 'posts/edit'
    get 'posts/preview'
  end
  namespace :manage do
    get 'membership_subscriptions/index'
    get 'membership_subscriptions/show'
  end
  namespace :manage do
    get 'products', to: 'products#index'
  end
  namespace :manage do
    get 'product_orders/index'
    get 'product_orders/show'
  end
  namespace :manage do
    get 'memberships/index'
    get 'memberships/show'
    get 'memberships/new'
    get 'memberships/edit'
    get 'memberships/preview'
  end
  namespace :manage do
    get 'stores/my'
    get 'stores/edit'
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "auth/login"
  post "auth/login_user_with_email_and_password"

  get "auth/sign_up"
  get "auth/logout"
  get "auth/get_session"
  post "auth/create_user_with_email_and_password"
end
