Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  resources :articles, only: [:new, :create, :show]

end
