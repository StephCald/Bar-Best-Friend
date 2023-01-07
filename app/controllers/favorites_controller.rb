class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = user.favorite(@establishment)
  end
end
