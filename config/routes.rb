Rails.application.routes.draw do
  devise_for :users
  resources :requests
  root to: 'site#home'
  get 'site/about'
  get 'site/contact'
  
  resources :conversations do
  	resources :messages
  end

end
