Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :establishments, except: :index do
    resources :reviews, only: %i[new create]
  end

  # resources :review_tags, only: [:create, :new] do
  # end

  resources :establishments, only: :index do
    member do
      post 'toggle', to: "favorites#toggle"
    end
  end

  resources :users do
    resources :favorites
  end

  get 'toggle_map', to: "pages#toggle_map", as: "toggle_map"
end
