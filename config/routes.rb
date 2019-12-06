Rails.application.routes.draw do
  devise_for :admins
  root 'billboards#index'
  resources :billboards do
    resources :songs
  end
  resources :artists do
    resources :songs
  end
end
