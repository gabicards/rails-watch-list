Rails.application.routes.draw do
  resources :movies, only: [:index, :show, :new, :create, :destroy]

  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

  root 'lists#index'
end
