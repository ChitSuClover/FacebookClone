Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  resources :users, only: [:new, :create, :show]
end
