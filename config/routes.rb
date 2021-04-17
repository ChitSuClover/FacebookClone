Rails.application.routes.draw do
  get 'users/new'
  resources :users, only: [:new, :create, :show]
end
