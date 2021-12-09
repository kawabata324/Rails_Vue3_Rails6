Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  resources :users, only: [:index, :show]
end
