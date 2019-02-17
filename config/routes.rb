Rails.application.routes.draw do
  devise_for :users
  resources :requests
  root to: 'site#home'
  get 'site/about'
  get 'site/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
