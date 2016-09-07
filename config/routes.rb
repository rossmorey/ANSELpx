Rails.application.routes.draw do
  root 'static_pages#root'
  namespace :api, defaults: { format: 'json' } do
    resources :photos, only: [:index, :create]
    resources :users, only: [:create, :index] do
      resources :photos, only: [:index]
    end
    resource :session, only: [:create, :destroy]
    resource :follows, only: [:create, :destroy]
  end
end
