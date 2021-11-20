Rails.application.routes.draw do
  root 'apps#index'
  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end
  get '*path', to: 'apps#index', via: :all
end