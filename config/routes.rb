Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :establishments do
    resources :reviews, only: %i[new create]
    # member do
    #   post 'toggle_favorite', to: "establishment#toggle_favorite"
    # end
  end

  resources :establishments, only: :index do
    member do
      post 'toggle_favorite', to: "establishments#toggle_favorite"
    end
  end

  resources :users do
    resources :favorites
  end

end
