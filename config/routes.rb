Rails.application.routes.draw do
  devise_for :users
  resources :tags do 
    member do 
      get 'edit_note'
    end
  end
  
  
  root to: "home#index"

end
