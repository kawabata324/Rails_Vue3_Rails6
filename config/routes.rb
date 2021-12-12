Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  resources :users, only: [:index, :show, :create]

  namespace :api, format: 'json' do
    resources :memos, only: [:index]
  end
end
