Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :establishments, except: :index do
    resources :reviews, only: :create
  end

end

# Quesitons
# Do we need a show page for the reviews or is it like a 'pop up' when
# - how does the reviews page trigger - after they visit the location? or is this too hard and we just give the user a button - location tracking?
# look at the routes for reviews - does it need its own route to for the reviews page...popup?
