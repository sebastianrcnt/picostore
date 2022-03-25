Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "auth/login"
  post "auth/login_user_with_email_and_password"

  get "auth/sign_up"
  get "auth/logout"
  get "auth/get_session"
  post "auth/create_user_with_email_and_password"

  namespace :manage do
    resources :products
  end
end
