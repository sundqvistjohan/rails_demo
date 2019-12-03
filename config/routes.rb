Rails.application.routes.draw do
  root 'landing#index'
  resources :articles, only: [:new, :create, :show]

end
