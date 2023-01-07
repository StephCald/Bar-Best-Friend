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

  def favorite
    @user = current_user
    @establishment = Establishment.find(params[:id])
    @user.favorite(@establishment)
    redirect_to :back
  end

  def unfavorite
    @user = current_user
    @establishment = Establishment.find(params[:id])
    @user.unfavorite(@establishment)
    redirect_to :back
  end

  private

  def establishment_params
   params.require(:establishment).permit(:name, :phone, :address, :type, :rating, :image)
  end
end
