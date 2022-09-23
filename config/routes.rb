require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users

  authenticated :user do
    root to: "home#dashboard", as: :authenticated_root
  end

  resources :consultation_types
  resources :consultations, except: [:index, :new]

  post "payment-intent", to: "consultations#intent"
  get ":consultation_link", to: "users#show", as: :user

  scope "/:consultation_link", as: :user do
    resources :consultations, only: [:index, :new]
  end

  root to: 'home#index'
end
