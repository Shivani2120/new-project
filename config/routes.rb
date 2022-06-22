Rails.application.routes.draw do
  devise_for :users
  resources :tags do 
    member do 
      get '/tags/:id/edit_note', to: 'tags#edit_note', as: 'edit_note'
      patch '/', to: 'tags#update_note', as: 'update_note'
    end
  end
  
  
  root to: "home#index"

end
