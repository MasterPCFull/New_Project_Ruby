Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    nomespace :v1 do
      resoirces airline, param :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

get '*path', to: 'pages#index', via: :all

end
