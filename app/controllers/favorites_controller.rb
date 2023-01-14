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

  def delete_from_list
    @user = current_user
    @establishment = Establishment.find(params[:id])
    @user.unfavorite(@establishment)
    redirect_to user_favorites_path, status: :see_other
  end

  private

  def establishment_params
    params.require(:establishment).permit(:name, :phone, :address, :location_type, :rating, :image)
  end
end
