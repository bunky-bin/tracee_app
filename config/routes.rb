Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :helpers, only: [:index, :show] do

    resources :requests, only: [:show,:new, :create, :index]
  end

  resources :livehelpers, only: :show do
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end

  resources :helpers, only: :index do
    resources :reviews, only: [:new, :create, :index,:show]
  end
end
