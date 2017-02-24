Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  resources :requests, only: [:index, :show, :new, :create] do
    resources :quantities, only: [:create]
  end

  resources :quantities, only: [:destroy]

  root 'requests#index'
end
