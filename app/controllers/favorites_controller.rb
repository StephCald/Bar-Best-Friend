class FavoritesController < ApplicationController

  def index
    @user = current_user
    @favoritable_ids = Favorite.where(favoritor_id: @user.id).pluck(:favoritable_id)
    # it returns an array of favoritable_ids
    @establishments = []
    @favorite = policy_scope(Favorite)
    @favoritable_ids.each do |fav|
      establishment = Establishment.find_by(id: fav)
      if establishment
        @establishments << establishment
      end
    end
  end

  def toggle
    @user = current_user
    @establishment = Establishment.find(params[:id])
    authorize @establishment
    current_user.favorited?(@establishment) ? current_user.unfavorite(@establishment) : current_user.favorite(@establishment)
    redirect_back(fallback_location: establishment_path(@establishment))
  end

  private

  def establishment_params
    params.require(:establishment).permit(:name, :phone, :address, :location_type, :rating, :image)
  end
end
