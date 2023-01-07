class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favoritable_ids = Favorite.where(favoritor_id: @user.id).pluck(:favoritable_id)
    # it returns an array of favoritable_ids
    @favoritable_ids.each do |fav|
      @establishment = Establishment.find(fav)
      puts @establishment.name
    end
    # establishment.find_by(id: @favoritable_id).name
  end

  # def show
  #   @user = current_user
  #   @establishment = Establishment.find(params[:id])
  # end
end
