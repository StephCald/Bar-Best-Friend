class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = current_user.favorite(@establishment)
  end

end
