Rails.application.routes.draw do
  devise_for :users
  resources :tags

  root to: "home#index"

end
