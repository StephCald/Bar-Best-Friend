class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = @user.all_favorites
    # user.all_favorites
  end

  def show
    @user = current_user
    @establishment = Establishment.find(params[:id])
  end
end
