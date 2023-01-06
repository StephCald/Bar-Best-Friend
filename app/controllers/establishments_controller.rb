class EstablishmentsController < ApplicationController
 def index
   @user = current_user
   @establishments = Establishment.all
 end

 def show
  @user = current_user
  @establishment = Establishment.find(params[:id])
 end

 def new
  @user = current_user
  @establishment = Establishment.new
 end


  # def favorite
  #   @establishment = Establishment.find(params[:id])
  #   current_user.favorite(@establishment)
  #   redirect_to :back
  # end

  # def unfavorite
  #   @establishment = Establishment.find(params[:id])
  #   current_user.unfavorite(@establishment)
  #   redirect_to :back
  # end

 private

 def establishment_params
  params.require(:establishment).permit(:name, :phone, :address, :type, :rating, :image, :photo)
 end
end
