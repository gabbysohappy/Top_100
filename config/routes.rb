Rails.application.routes.draw do
  root 'billboards#index'
  resources :billboards
  resources :artists
  resources :songs
    
  # get 'billboards/index'
  # get 'billboards/show'
  # get 'billboards/new'
  # get 'billboards/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
