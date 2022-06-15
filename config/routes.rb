Rails.application.routes.draw do
  devise_for :users
  resources :tags do
    resources :add_tags
  end

  root to: "home#index"

end
