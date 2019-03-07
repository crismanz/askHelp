Rails.application.routes.draw do
  get 'messages/index'
  get 'conversations/index'
  devise_for :users
  resources :users, only: [:show]
  root to: 'site#home'

  resources :conversations, only: [:index, :create] do
  	resources :messages, only: [:index, :create]
  end

  resources :requests do
    member do
      patch 'volunteer'
      patch 'resubmit'
    end
  end

end
