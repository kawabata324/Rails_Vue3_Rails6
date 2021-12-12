Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  # get 'users/index'
  # get 'users/show'
  # resources :users, only: [:index, :show, :create]

  namespace :api, format: 'json' do
    resources :memos, only: [:index]
  end
end
