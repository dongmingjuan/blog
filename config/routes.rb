Rails.application.routes.draw do
  namespace :admin do
    resources :posts
  end
  namespace :admin do
    resources :groups
  end
  resources :groups
  root "groups#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
