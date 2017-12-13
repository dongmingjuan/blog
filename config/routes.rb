Rails.application.routes.draw do
  namespace :admin do
    resources :posts
  end
  resources :posts
  root "posts#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
