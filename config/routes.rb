Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :requests, only: [:new, :create, :show, :index, :delete]
    end

    resources :requests, except: [:new, :create] do
      resources :reviews, only: [:new, :create, :show]
    end

    # resources :requests, except: [:new, :create] do
    #   resources :chatrooms, only: :show do
    #     resources :messages, only: :create
    #   end
    # end

end
