Rails.application.routes.draw do
  devise_for :users
  root controller: :landing, action: :index
  resources :articles, only: [:new, :create, :show, :edit, :update] do
    resources :comments, only: [:create]
  end
end
