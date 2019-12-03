Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :landing, only: [:new, :create]
end
