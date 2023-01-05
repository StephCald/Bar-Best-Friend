Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :establishments do
    resources :reviews, only: :create
  end

  resources :users do
    resources :favorites, only: :index
  end

end
